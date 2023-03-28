FROM maven:3.9.0
WORKDIR /home/thomas/Documents/ConteneursEtMessagerieDeVM/Exam/demo-java-maven
RUN apt update && apt upgrade --yes
COPY src .
COPY pom.xml .
RUN mvn package

FROM jetty:9.4-jre11
COPY --from=0 /home/thomas/Documents/ConteneursEtMessagerieDeVM/Exam/demo-java-maven/target/*.war /var/lib/jetty/webapps
EXPOSE 8080
CMD ["java", "-jar", "/usr/local/jetty/start.jar"]