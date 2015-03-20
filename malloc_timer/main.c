#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
//#define NUM_THREADS    16 

#include "timer.h"

#define CYCLES 10000000
void *worker(void *threadid)
{
   long tid;
   tid = (long)threadid;
   /* printf("malloc --> thread #%ld!\n", tid); */
   int i;
   for(i=0;i<CYCLES;i++){
   	unsigned char* space = malloc(2^32*sizeof(char));
   	free(space);
   }
   pthread_exit(NULL);
}

int main (int argc, char *argv[])
{
   int NUM_THREADS = atoi(argv[1]); 
   /* init the timer */
   init_timer();
   /* start the timer */
   start_timer();
   pthread_t threads[NUM_THREADS];
   int rc;
   long t;
   for(t=0; t<NUM_THREADS; t++){
      //printf("In main: creating thread %ld\n", t);
      rc = pthread_create(&threads[t], NULL, worker, (void *)t);
      if (rc){
         printf("ERROR; return code from pthread_create() is %d\n", rc);
         exit(-1);
      }
   }
   /* join with the other threads */
   int i;
   for(i=0;i<NUM_THREADS;i++) 
       pthread_join(threads[i], NULL);
//   printf("DONE %d cycles of 2^32 calloc's in %ld sec %ld nsec \n",
//          CYCLES,getTime_s(),getTime_ns());
   printf("%ld %ld ",getTime_s(),getTime_ns());
   fflush(stdout);

   pthread_exit(NULL);
}
