#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <signal.h>
#include <time.h>

#include "timer.h"

int main(int argc, char *argv[])
{
    init_timer();
    /* set the time */
    start_timer();
    while(1){printf("%ld %ld \n",getTime_s(),getTime_ns());}
    fflush(stdout);
    exit(EXIT_SUCCESS);

}

