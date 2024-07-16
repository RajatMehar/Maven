# Use an official Maven image to build the app
FROM maven:3.8.1-jdk-11 AS build
WORKDIR /usr/src/app
COPY pom.xml .
COPY src ./src
RUN mvn clean test

CMD ["mvn", "test"]
