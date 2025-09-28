# Stage 1: Build the application using Maven and JDK 17
FROM maven:3.8.4-eclipse-temurin-17 AS build

WORKDIR /app/webapp
COPY webapp /app/webapp
RUN mvn clean package -DskipTests

# Stage 2: Use Tomcat runtime image with JDK 17
FROM tomcat:9.0-jdk17

# Optional: Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file built in the previous stage into Tomcat's webapps directory
COPY --from=build /app/webapp/target/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
