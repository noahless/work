import requests
res = requests.get("http://www.baidu.com")
savefile=open("savefilename","w")
savefile.write(res.content)
savifile.close()
