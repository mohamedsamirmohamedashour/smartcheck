FROM httpd:alpine
COPY index.html /usr/local/apache2/htdocs/
COPY t_test_eicar_file.htm /usr/local/apache2/htdocs/
