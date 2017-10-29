import smtplib
from email.mime.text import MIMEText
from email.header import Header


smtpserver=''
user='lizq253@unicom.cn'
passwd='userlc164_'

#mail
sender=''
receivers=''
subject=''
content=''

msg=MIMEText(content,'html','utf-8')
msg['Subject']=Head(subject,'utf-8')
msg['From']='user'
msg['To']=','.join(receivers)

#start a connection
smtp=smtplib.SMTP_SSL(smtpserver,465)
#port
smtp.helo(smtpserver)
smtp.ehlo(smtperver)

#start send
smtp.login(user,passwd)
smtp.sendmail(sender,receivers,msg.as_string())
smtp.quit();
