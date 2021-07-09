FROM jetty:9.3.0
COPY target/*.war /var/lib/jetty/webapps
EXPOSE 8080
