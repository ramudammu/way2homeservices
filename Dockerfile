FROM jetty:9.3.0
ADD target/*.war /var/lib/jetty/webapps
EXPOSE 8080
