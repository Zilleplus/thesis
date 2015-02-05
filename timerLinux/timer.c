#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <signal.h>
#include <time.h>

#define CLOCKID CLOCK_REALTIME

/*allow real time signals */
#define SIG SIGRTMIN 

#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                        } while (0)
#define toggleTime_ns 1000

static gpio_state=0;

/*
 * print out the properties of the signal
 */
static void
print_siginfo(siginfo_t *si)
{
    timer_t *tidp;
    int or;

    tidp = si->si_value.sival_ptr;

    printf("    sival_ptr = %p; ", si->si_value.sival_ptr);
    printf("    *sival_ptr = 0x%lx\n", (long) *tidp);

    or = timer_getoverrun(*tidp);
    if (or == -1)
        errExit("timer_getoverrun");
    else
        printf("    overrun count = %d\n", or);
}
/*
 * called each time timer signals it
 */
static void
handler(int sig, siginfo_t *si, void *uc)
{
    /* Note: calling printf() from a signal handler is not
       strictly correct, since printf() is not async-signal-safe;
       see signal(7) */
    /*
     * printf("handler called");
     * printf("Caught signal %d\n", sig);
     * print_siginfo(si);
     */
    /* now swap the signal on the gpio */
    if(gpio_state){
        gpio_state=0;
        /* put gpio low */
    }else{
        gpio_state=1;
        /* put gpio high */
    }
    printf("toggling gpio on %d \n",gpio_state);
    fflush(stdout);
    /* signal(sig, SIG_IGN); *//*disable signals to stop the timer from calling handler*/
}

int
main(int argc, char *argv[])
{
    timer_t timerid;
    struct sigevent sev;
    struct itimerspec its;
    long long freq_nanosecs;
    sigset_t mask;
    struct sigaction sa;

    if (argc != 3) {
        fprintf(stderr, "Usage: %s <sleep-secs> <freq-nanosecs>\n",
                argv[0]);
        exit(EXIT_FAILURE);
    }

    /* --------------------------------------------------------*/
    /* Establish handler for timer signal */

    printf("Establishing handler for signal %d\n", SIG);
    sa.sa_flags = SA_SIGINFO; /* select sa_sigaction as handler for the signal */
    sa.sa_sigaction = handler; /* enter fnnction handler as the handler */
    sigemptyset(&sa.sa_mask); /*  set the signalmask to accept all kinds of signals  */

    /* int sigaction(int signum, const struct sigaction *act,
     *                 struct sigaction *oldact);
     */
    if (sigaction(SIG, &sa, NULL) == -1)
        errExit("sigaction");
    /* --------------------------------------------------------*/
    /* Block timer signal temporarily */

    printf("Blocking signal %d\n", SIG);
    sigemptyset(&mask); /* init sigset_t struct */
    sigaddset(&mask, SIG);/* add correct mask to it */
    /*
     * sigprocmask function
     * -> fetch and/or change the signal mask of the
     *         calling thread/process
     * int sigprocmask(int how, const sigset_t *set, sigset_t *oldset);
     * how = SIG_BLOCK,SIG_UNBLOCK or SIG_SETMASK
     * set = mask to set on it
     * oldset = old value of the mask
     *
     * SIG_SETMASK
     *               The set of blocked signals is set to the argument set.
     *
     */
    if (sigprocmask(SIG_SETMASK, &mask, NULL) == -1)
        errExit("sigprocmask");

    /* --------------------------------------------------------*/
    /* Create the timer */

    sev.sigev_notify = SIGEV_SIGNAL;
    sev.sigev_signo = SIG;
    sev.sigev_value.sival_ptr = &timerid;
    if (timer_create(CLOCKID, &sev, &timerid) == -1)
        errExit("timer_create");

    printf("timer ID is 0x%lx\n", (long) timerid);

    /* Start the timer */
    /* struct itimerspec its; */

    /*
     * struct timespec {            
     *     time_t tv_sec;     Seconds             
     *     long   tv_nsec;    Nanoseconds 
     * };
     * struct itimerspec {            
     *     struct timespec it_interval;  Timer interval
     *     struct timespec it_value;     Initial expiration
     * }; 
     */
    its.it_value.tv_sec = toggleTime_ns / 1000000000;
    its.it_value.tv_nsec = toggleTime_ns % 1000000000;
    its.it_interval.tv_sec = its.it_value.tv_sec;
    its.it_interval.tv_nsec = its.it_value.tv_nsec;

    /* int timer_settime(timer_t timerid, 
     *              int flags,
     *              const struct itimerspec *new_value,
     *              struct itimerspec *old_value);
     */
    if (timer_settime(timerid, 0, &its, NULL) == -1)
         errExit("timer_settime");
    /* --------------------------------------------------------*/

    /* Unlock the timer signal, so that timer notification
       can be delivered */

    printf("Unblocking signal %d\n", SIG);
    if (sigprocmask(SIG_UNBLOCK, &mask, NULL) == -1)
        errExit("sigprocmask");
    /* and wait forever */

    while(1) {
        sleep(1);
    }
    exit(EXIT_SUCCESS);
}
