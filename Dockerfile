FROM openjdk:11-jdk-slim as build
EXPOSE 8080

ADD target/hello-world.jar hello-world.jar

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]

ENTRYPOINT ["java","-jar","/hello-world.jar"]
