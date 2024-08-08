FROM openjdk:18.0.2-jdk-slim

CMD ["./gradlew", "clean", "bootJar"]
COPY build/libs/demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
