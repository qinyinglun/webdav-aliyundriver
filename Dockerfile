FROM openjdk:8-jre-alpine

USER root
ENV TZ=Asia/Shanghai
ENV JAVA_OPTS="-Xmx512m"
EXPOSE 8080/tcp

COPY ./target/*.jar app.jar

ENTRYPOINT java ${JAVA_OPTS} -jar   app.jar
