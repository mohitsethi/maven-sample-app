FROM java:8-jdk


RUN apt-get update -y
RUN apt-get install maven -y

COPY . /app
WORKDIR /app
EXPOSE 8080 8080
RUN mvn clean install
ENTRYPOINT ["mvn", "tomcat:run"]
