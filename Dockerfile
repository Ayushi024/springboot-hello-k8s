FROM openjdk:17-jdk-alpine
LABEL maintainer="Ayushi <ayushipanwar0024@example.com>"
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
