FROM maven:latest AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM jetty:9.3.0
COPY --from=build /home/app/target/*.war /var/lib/jetty/webapps
EXPOSE 8080
