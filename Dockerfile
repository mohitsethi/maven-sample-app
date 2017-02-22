FROM java:8-jdk


RUN apt-get update -y
RUN apt-get install maven -y

COPY . /app
WORKDIR /app
RUN mvn clean install

