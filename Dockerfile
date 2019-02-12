FROM httpd:alpine
COPY eicar.com.txt /usr/local/apache2/htdocs/
COPY credentials.txt /usr/local/apache2/htdocs/
