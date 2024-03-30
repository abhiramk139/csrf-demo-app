# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the jar file into the container at /app
COPY target/spring-boot-csrf-sample-0.0.1-SNAPSHOT.war /app/app.war

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file 
CMD ["java", "-jar", "/app/app.war"]