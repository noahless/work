import urllib
import urllib2
import re

class save_img:
    def __init__(self):
        self.siteURL = 'www.baiducom'

    def getPage(self,url):
        request = urllib2.Request(url)
        respnse = urllib2.urlopen(request)
        return respnse.read().decode('UTF-8')

    def ge
