FROM openjdk:21
WORKDIR /app
COPY src/App.java .
RUN javac App.java
CMD ["java", "App"]
