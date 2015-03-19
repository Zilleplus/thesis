#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#define NUM_THREADS    16 
#define CYCLES 1000000

#include "timer.h"

void *worker(void *threadid)
{
   long tid;
   tid = (long)threadid;
   /* printf("malloc --> thread #%ld!\n", tid); */
   int i;
   for(i=0;i<CYCLES;i++){
   	unsigned char* space = calloc(2^32,sizeof(char));
   	*space = 'A';
   	free(space);
   }
   pthread_exit(NULL);
}

int main (int argc, char *argv[])
{
   /* init the timer */
   init_timer();
   /* start the timer */
   start_timer();

   pthread_t threads[NUM_THREADS];
   int rc;
   long t;
   for(t=0; t<NUM_THREADS; t++){
      printf("In main: creating thread %ld\n", t);
      rc = pthread_create(&threads[t], NULL, worker, (void *)t);
      if (rc){
         printf("ERROR; return code from pthread_create() is %d\n", rc);
         exit(-1);
      }
   }

   int i;
   for(i=0;i<NUM_THREADS;i++) 
       pthread_join(threads[i], NULL);
   /* Last thing that main() should do */
   printf("DONE %i cycles of 2^32 calloc's in %i.%i seconds \n",CYCLES,getTime_s(),getTime_ns());
   fflush(stdout);

   pthread_exit(NULL);
}
