#include<stdio.h>
#include<stdlib.h>

int main(int argc,char ** argv){
  if(argc!=2){
    perror("arg is not correct <file_path>");
    exit(1);
  }
  FILE * pf;
  char ch;
  unsigned int count=0;

  pf = fopen(argv[1],"r");
  if(pf==NULL){
    perror("error when open the file");
    exit(1);
  }

  while(fgetc(pf)!=EOF){
    count++;
  }
  fprintf(stdout,"the size of the file:%s \n %un",argv[1],count);

  fclose(pf);
  exit(0);
}
