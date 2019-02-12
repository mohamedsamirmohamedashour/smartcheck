FROM httpd:alpine
COPY index.html /usr/local/apache2/htdocs/
ENV PASSWORD=P@ssw0rd93
