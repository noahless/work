/*
  fgets():
1.'\n'
2.size-1+'\0'

fputs()
char * ->buffer
*/

#include<stdio.h>
#include<stdlib.h>

#define SIZE 1024
int main(int argc,char ** argv){
  if(argc!=2){
    fprintf(stderr,"err args <FIEL_PATH>");
    exit(1);
  }
  
  char buf[SIZE];
  FILE * pf;
  
  pf=fopen(argv[1],"r");
  if(pf==NULL){
    perror("error when open the file");
    exit(1);
  }
  
  /* printf("hello"); */
  while(fgets(buf,SIZE,pf)){
    fputs(buf,stdout);
  };
  
  fclose(pf);
  exit(0);
}
