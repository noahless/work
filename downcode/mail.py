import smtplib
from email.mime.text import MIMEText

msg = MIMEText("The body of the email is here")

msg["Subject"] = "an email alert"
msg["From"] = "lizq253@unicom.cn"
msg["To"] = "164118636@qq.com"

s = smtplib.SMTP("localhost")
s.send_message(msg)
s.quit()
