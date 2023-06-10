FROM maven:latest as build

WORKDIR /app
COPY . .

RUN mvn clean install


FROM harikrushn96/tomcat9
RUN rm -rf /opt/tomcat/webapps/*
COPY --from=build /app/target/01-maven-web-app.war /opt/tomcat/webapps/ROOT.war

EXPOSE 80

CMD ["catalina.sh","run"]
