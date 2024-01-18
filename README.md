Part 3:

1- docker volume create my_volume
------------------------------------------------------------------------------------------------------------------------------------
2- docker run -d -p 8000:80 -v my_volume:/usr/share/nginx/html --name container_nginx nginx
------------------------------------------------------------------------------------------------------------------------------------
3- Nginx is accessible with following output:

Welcome to nginx!
If you see this page, the nginx web server is successfully installed and working. Further configuration is required.

For online documentation and support please refer to nginx.org.
Commercial support is available at nginx.com.

Thank you for using nginx.
------------------------------------------------------------------------------------------------------------------------------------
4- docker cp /home/ali/Documents/DiceCamp/Assignment1/index.html container_nginx:/usr/share/nginx/html/index.html
------------------------------------------------------------------------------------------------------------------------------------
5- Text is accessible
------------------------------------------------------------------------------------------------------------------------------------
6- Container has been stopped and removed using docker stop and docker rm
------------------------------------------------------------------------------------------------------------------------------------
7- docker run -d -p 8001:80 -v my_volume:/usr/local/apache2/htdocs --name container_httpd httpd
-----------------------------------------------------------------------------------------------------------------------------------
8 - docker cp /home/ali/Documents/DiceCamp/Assignment1/about.html container_httpd3:/usr/local/apache2/htdocs/my_volume

# cd htdocs
# cat my_volume
Hello# 
-----------------------------------------------------------------------------------------------------------------------------------
about.html file not accessible but if I try localhost:8081/my_volume, then it is accessible
------------------------------------------------------------------------------------------------------------------------------------
to remove the my_volume

docker volume rm my_volume
-----------------------------------------------------------------------------------------------------------------------------------

