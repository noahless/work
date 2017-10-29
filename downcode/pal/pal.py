import urllib2.request

url = "http://www.baidu.com"

print("fist way")
response1 = urlopen(url)
print(response1.getcode())
print(len(response1.read()))


print("second way")
request = Request(url)
request.add_header("user-agent","Mizilla/5.0")
response2 = urlopen(request)
print(response2.getcode())
print(len(response2.read()))


print("third way")
cj = cookielib.CokieJar()
opener = build_opener(HTTPCookieProcessor(cj))
install_opener(opener)
response3 = urlopen(opener)
print(response3.getcode())
print(len(response3.read()))
