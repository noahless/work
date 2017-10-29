from urllib.request import urlopen
from bs4 import BeautifulSoup

try
html=urlopen("http://www.pythonscraping.com/pages/page1.html")
except HTTPEror as e
print(e)

bsobj=BeautifulSoup(html.read())
print(bsobj.h1)
print("\n")
print(bsobj.html.h1)
print("\n")
print(bsobj.html.body.h1)
