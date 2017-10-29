from urllib.request import urlopen
import re

def getHtml(url):
    page = urllib.urlopen(url)
    return page.read()

def getImg(html):
    reg = r'src="(.*\.jpg)"'

    imgre = re.compile(reg)
    imglist = re.findall(imgre,html)

    x = 0

    for ite in imglist:
        urllib.urlretrieve(ite,"tem/tempic%s.jpg"%x)
        x+=1
    return x
    
html = getHtml("http://image.baidu.com")
res = getImg(html)
print(res)

