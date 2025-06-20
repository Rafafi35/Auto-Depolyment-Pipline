FROM maven:3.9-eclipse-temurin-17-alpine
COPY pom.xml .
COPY src src
RUN mvn package
ENTRYPOINT ["java","-jar","target/app-refcard-01-0.0.1-SNAPSHOT.jar"]