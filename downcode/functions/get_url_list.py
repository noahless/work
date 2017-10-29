import requests
from urllib import request
from bs4 import BeautifulSoup

def get_url_list(url):
    
    response = request.get(url)
    soup = BeautifulSoup(response.content,"html.parser")
    res = soup.find_all(a).get("href")
    return targs

print(get_url_list("http://www.baidu.com")[0])



 


