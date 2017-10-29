import smtplib
from email.mime.text import MIMEText
from bs4 import BeautifulSoup
from urllib.request import urlopen
import time

def sendMail(subject , body):
    msg = MIMEText(body)

    msg["Subject"] = subject
    msg["from"] = "bg machine"
    
    
    
