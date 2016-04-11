import webapp2

class RefsPage(webapp2.RequestHandler):
    def get(self):
        self.response.write(open('references.html').read())

class MainPage(webapp2.RequestHandler):
    def get(self):
#self.response.write(open('index.html').read())
        self.redirect('/references.html')

app = webapp2.WSGIApplication([
    ('/references.html', RefsPage),
    ('/', MainPage),
], debug=True)
