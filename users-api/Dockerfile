FROM maven:3.8-openjdk-8 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/users-api-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8083
CMD ["java", "-jar", "app.jar"]
