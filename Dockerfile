# Use Java 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Give execute permission to Maven wrapper
RUN chmod +x mvnw

# Build the app (skip tests)
RUN ./mvnw -B clean package -DskipTests

# Expose app port
EXPOSE 8080

# Run the JAR (update the name to match your target folder)
CMD ["java", "-jar", "target/Amez-Mart-0.0.1-SNAPSHOT.jar"]
