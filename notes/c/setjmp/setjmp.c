#include<stdio.h>
#include<setjmp.h>

int main(void){

  jmp_buf env;

  switch(setjmp(env))
    {
    case 0:{
      printf("case 0");
      longjmp(env,1);
    };break;
      
    default :
      printf("case 1");break;
    }
  fflush(stdout);
  return 0;
}
