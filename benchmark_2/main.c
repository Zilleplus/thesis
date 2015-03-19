#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <signal.h>
#include <time.h>

#include "../timerlib/timer.h"

#define CLOCKID CLOCK_REALTIME
#define SIG SIGRTMIN
#define REPEAT 100

#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                        } while (0)

void dummy(double* A,double* B,double* C,double* D);
int main(int argc, char *argv[])
{
    init_timer();
    int N;
    for(N=1;N<atoi(argv[1]);N++){
    	/* allocate the needed data on stack */
    	int i;int j;
    	double A[N],B[N],C[N],D[N];
	/* set the time */
        start_timer();
	/* do the calulations */
    	for(j=1;j<REPEAT;j++){
    	    for(i=1;i<N;i++){
    	         A[i] = B[i] + C[i] * D[i];	
    	        if((N+1)-N==0)
    	    	    dummy(A,B,C,D);
    	    }
	}
	/* get the time the operations took */
	long timeExecute_ns = getTime_ns(); 
	long timeExecute_s = getTime_s(); 
	
	/* find time for each calculation */
	long timePerCalculation_ns =  (timeExecute_ns) / (N* REPEAT);
	/* find operations per second */
	/* send it to the terminal ~*/
        //printf("DONE with: %i sec %i nsec thats %i nano seconds per calculation\n",timeExecute_s,timeExecute_ns,timePerCalulation_ns); 	    
	printf("%i ",timePerCalculation_ns);
        fflush(stdout);

    }
    exit(EXIT_SUCCESS);
}
void dummy(double* A,double* B,double* C,double* D)
{
    int i;
    for(i=0;i<100;i++)
	 *A = *B + *C+*D ;
}

