def Wsgi_application(environ, start_response):
    status = "200 OK"
    headers = [('content-type','text/plain')]
    body = ['\n'.join(environ['QUERY_STRING'].split('&'))]
    start_response(status, headers)
    return body 
