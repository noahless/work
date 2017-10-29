#include<stdio.h>
#include<unistd.h>
#include<sys/type.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<netinet/in.h>

#define SERV_PORT 8000

int main(void){
  int lfd,cfd;
  struct sockaddr_in serv_addr,clin_addr;
  socklen_t clin_len;
  char buf[1024];
  int len;

  lfd = socket(AF_INET,SOCK_STREAM,0);

  serv_addr.sin_family =
    
    
}
