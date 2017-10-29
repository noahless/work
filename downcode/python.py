from urllib.request import urlopen

html=urlopen("http://www.baidu.com")
pfile = open("rwfile.txt","w")

try:
    pfile.write(html)
finally:
    pfile.close()
print("yes")
