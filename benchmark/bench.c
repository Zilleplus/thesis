#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <signal.h>
#include <time.h>

#define CLOCKID CLOCK_REALTIME
#define SIG SIGRTMIN
#define REPEAT 100

#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                        } while (0)
void dummy(double* A,double* B,double* C,double* D);
static int running = 0;
static void
handler(int sig, siginfo_t *si, void *uc)
{
    /* Note: calling printf() from a signal handler is not
       strictly correct, since printf() is not async-signal-safe;
       see signal(7) */
    running++;
    //signal(sig, SIG_IGN);
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

    printf("timer ID is 0x%lx\n", (long) timerid);

    /* Start the timer */

    its.it_value.tv_sec = 0;
    its.it_value.tv_nsec = 100000000;
    its.it_interval.tv_sec = its.it_value.tv_sec;
    its.it_interval.tv_nsec = its.it_value.tv_nsec;

    if (sigprocmask(SIG_UNBLOCK, &mask, NULL) == -1)
        errExit("sigprocmask");
    struct itimerspec *time_till_exp = malloc(sizeof(struct itimerspec));

    int N;
    for(N=1;N<atoi(argv[1]);N=N+10){
    	/* allocate the needed data on stack */
    	int i;int j;
    	double A[N],B[N],C[N],D[N];
	/* set the time again */
    	if (timer_settime(timerid, 0, &its, NULL) == -1)
    	     errExit("timer_settime");
	/* do the calulations */
    	for(j=1;j<REPEAT;j++){
    	    for(i=1;i<N;i++){
    	         A[i] = B[i] + C[i] * D[i];	
    	        if((N+1)-N==0)
    	    	    dummy(A,B,C,D);
    	    }
	}
	/* measure the executed time */
        timer_gettime(timerid,time_till_exp);
	/* get the time the operations took */
	long timeExecute = 99999999 - (*time_till_exp).it_value.tv_nsec; 
	/* find time for each calculation */
	double timePerCalulation =  ((double)timeExecute) / (N* REPEAT);
	/* find operations per second */
	double flps = 1 / timePerCalulation ;
	/* send it to the terminal ~*/
        printf("%f ",flps); 	    
        fflush(stdout);
    }
    exit(EXIT_SUCCESS);
}
void dummy(double* A,double* B,double* C,double* D)
{

}

