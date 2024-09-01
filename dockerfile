FROM openjdk:11

LABEL maintainer="skatkar225@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/spring-input-data.jar

ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]