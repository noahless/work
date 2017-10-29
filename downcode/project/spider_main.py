# coding :utf-8


class SpiderMain(object):
    def __init__(self):
        self.urls = url_manager.UrlManager()
        self.downloader = urhtml_downloader.HtmlDownloader()
        self.parser = html_parser.HtmlParser()
        self.outputer = html_outputer.HtmlOutputer()

    def craw(self,root_url):
        self.urls.add_new_url(root_url)
        
        while self.urls.has_new_url():

            new_url = self.urls.get_new_url()
            html_cont = self.downloader.download(new_url)
            new_urls,new_data = self.parser.parse(new_url,html_cont)
            self.urls.add_new_urls(new_urls)
            self.outputer.collect_data(new_data)

        self.outputer.output_html()
        
    
    
    