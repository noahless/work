import requests
from urllib.request import urlopen
from bs4 import BeautifulSoup
from urllib.error import HTTPError

def gettitle(url):
    try:
        html = urlopen(url)
    except HTTPError as e:
        return None

    try:
        bsobj = BeautifulSoup(html.read())
        title = bsobj.body.h1
    except AttributeError as e:
        return None
    return title


try:
    html=urlopen("http://www.baidu.com")
except HTTPError as e:
    print(e)
else:
    bsobj = BeautifulSoup(html.read())
    result = bsobj.find_all("input",{"id":"kw","name":"wd"})
    for ite in  result:
        print(ite)
        print("\n end\n")
    print("clear\n")




        
parameters = {"wd":"hello"}
r = requests.post("http://www.baidu.com")
print(r.text)
print("\n end \n")
