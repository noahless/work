#include<stdio.h>
#include<stdlib.h>

int main(int argc,char ** argv){
  if(argc!=3){
    fprintf(stderr,"Usage:%s <src_file> <des_file>",argv[0]);
    exit(1);
  }

  FILE *fps,*fpt;
  char ch;

  fps =fopen(argv[1],"r");
  if(fps==NULL){
    perror("error when open:");
    exit(1);
  }

  fpt=fopen(argv[2],"w");
  if(fpt==NULL){
    perror("error when open w");
    fclose(fps);
    exit(1);
  }

  while(1){
    ch=fgetc(fps);
    if(ch==EOF)
      break;
    fputc(ch,fpt);
  }

  fclose(fpt);
  fclose(fps);
  exit(0);
}
