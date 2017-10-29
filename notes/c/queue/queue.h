#include<stdio.h>
#include<stdlib.h>
#define STACK_SIZE 1024
#define T que_buf

struct node{
  unsigned int x;
  unsigned int y;
};

struct T{
  struct node *st_buf;
  unsigned int buf_size;
  unsigned int beg;
  unsigned int end;
};

int push(struct *T que,struct node);
node pop(struct *T que);
int size(struct *T que);
bool isempty(struct *T que);
bool isfull(struct * T que);


int push(struct *T que,struct *node){
  if(isfull())
    return -1;

  (*(que->end))->x=node->x;
  (*(que->end))->y=node->y;
  (que->buf_size)++;
  que->end = que->st_buf+((que->end-que->st_buf+1)%que->buf_size);
  return 0;
}

node pop(struct *T que){
  if(isempty())
    return null;

  node p = que->beg;
  que->beg = que->st_buf+((que->beg-que->st_buf+1)%que->buf_size);
  (que->buf_size)--;
  return *p;
}

int size(struct *T que){
  return *(que+STACK_SIZE);
}

bool isempty(struct *T que){
  if(que->end == que->beg)
     return true;
  return false;
}

bool isfull(struct * T que){
  if((que->end-que->beg)%que->buf_size==1)
    return true;
  return false;
}


int output(struct *T que){
  if(isempty){
    fprintf(stderr,"none to print");
  }
  for(struct *ite=que->beg;ite != que->end;ite = que->st_buf+((ite-que->st_buf+1)%que->buf_size)){
    fprintf(stdout,"the x:%d y:%d \n"ite->x,ite->y);
  }
}
