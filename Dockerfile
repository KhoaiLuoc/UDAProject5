FROM httpd:2.4

RUN date >> ~/date.txt
# CMD x=$(cat date.txt) && echo 'Hello $x' 
RUN x=$(cat ~/date.txt) && echo "<html><body><h1>It works at $x </h1></body></html>" > /usr/local/apache2/htdocs/index.html
# COPY index.html /usr/local/apache2/htdocs/

EXPOSE 80
