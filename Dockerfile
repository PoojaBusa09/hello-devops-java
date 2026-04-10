FROM openjdk:17
WORKDIR /app
COPY src/App.java .
RUN javac App.java
CMD ["java", "App"]
