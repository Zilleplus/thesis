#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <signal.h>
#include <time.h>

#define TIMEOUT 1000000
#define CLOCKID CLOCK_REALTIME
#define SIG SIGRTMIN
#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                        } while (0)

#include "timer.h"

/*
 * easy to use timer lib that calls a POSIX timer
 */
struct itimerspec time_till_exp;


timer_t timerid;
struct sigevent sev;
struct itimerspec its;
long long freq_nanosecs;
sigset_t mask;
struct sigaction sa;

static void
handler(int sig, siginfo_t *si, void *uc)
{
    struct itimerspec time_till_exp;
    timer_gettime(&timerid,&time_till_exp);

    /* Note: calling printf() from a signal handler is not
       strictly correct, since printf() is not async-signal-safe;
       see signal(7) */
     printf("timeout %i \n"); fflush(stdout);
     signal(sig, SIG_IGN);
}

/*
 * initialize the timer
 */
void init_timer(){

    /* Establish handler for timer signal */
    sa.sa_flags = SA_SIGINFO;
    sa.sa_sigaction = handler;
    sigemptyset(&sa.sa_mask);
    if (sigaction(SIG, &sa, NULL) == -1)
        errExit("sigaction");

    /* Block timer signal temporarily */
    sigemptyset(&mask);
    sigaddset(&mask, SIG);
    if (sigprocmask(SIG_SETMASK, &mask, NULL) == -1)
        errExit("sigprocmask");

    /* Create the timer */
    sev.sigev_notify = SIGEV_SIGNAL;
    sev.sigev_signo = SIG;
    sev.sigev_value.sival_ptr = &timerid;
    if (timer_create(CLOCKID, &sev, &timerid) == -1)
        errExit("timer_create");

    /* Start the timer */
    its.it_value.tv_sec = TIMEOUT;
    its.it_value.tv_nsec = 0;
    its.it_interval.tv_sec = its.it_value.tv_sec;
    its.it_interval.tv_nsec = its.it_value.tv_nsec;

    if (sigprocmask(SIG_UNBLOCK, &mask, NULL) == -1)
        errExit("sigprocmask");
    
}

/*
 * start the timer
 */
void start_timer(){
    if (timer_settime(timerid, 0, &its, NULL) == -1)
    	     errExit("timer_settime");
}

/*
 * get the current time 
 */
long getTime_ns(){
    refreshTime();
    return 999999999 - time_till_exp.it_value.tv_nsec; 
}
long getTime_s(){
    void refreshTime();
    return TIMEOUT-1 - time_till_exp.it_value.tv_sec; 
}
void refreshTime(){
    timer_gettime(&timerid,&time_till_exp);
}

