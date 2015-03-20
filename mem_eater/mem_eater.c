#include <stdlib.h>
#include <stdio.h>

#define SIZE_EATER 100000000
static int count;  
void parent();
void child();

int main(){
    count=4; /* number of forks to go ! */ 

    count--;
    pid_t pid = fork();

    if(pid == 0)
        child();
    else
        parent();
    
}
void parent(){
    printf("starting to fork: \n");
    while(count>0){
        fork(); /* and fork */
    }
}
void child(){
    printf("created child \n");
    char* mem = malloc(sizeof(char)*SIZE_EATER);
    /* wait(1); *//* wait for a sec to not put too much load on cpu */
    free(mem);
}
