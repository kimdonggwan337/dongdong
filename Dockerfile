FROM dongdevresistry.azurecr.io/dong-jdk17

ADD /build/libs/v1-0.0.1-SNAPSHOT.jar /v1-0.0.1-SNAPSHOT.jar


ENV JAVA_HOME=/opt/jdk/jdk-17.0.2
ENV PATH=${JAVA_HOME}/bin:${PATH}


ENTRYPOINT ["java", "-jar", "/v1-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080