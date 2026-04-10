FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY src/App.java .
RUN javac App.java
CMD ["java", "App"]
