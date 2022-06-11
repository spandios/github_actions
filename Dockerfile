FROM openjdk:11.0.10-jre-slim-buster
COPY . ./
ARG JAR_FILE=build/libs/github_actions-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]