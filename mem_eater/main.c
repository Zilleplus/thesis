#include <stdio.h>
#include <stdlib.h>
#define SIZE 1024

int main(){
    /**/
    char* meal = calloc(SIZE,1000000*8);
    int i=0;
    while(1){
        sleep(1);
        i = ++i % SIZE ; /* increment i */
        for(;i<SIZE;i++){
            meal[i];
        }
    }
}



