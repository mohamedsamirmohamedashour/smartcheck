FROM httpd:alpine
COPY index.html /usr/local/apache2/htdocs/
COPY credentials.txt /usr/local/apache2/htdocs/
