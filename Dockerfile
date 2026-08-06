# ==========================================
# STAGE 1: Build Environment
# ==========================================
FROM maven:3.9.9-eclipse-temurin-21 AS builder
WORKDIR /app

# Copy dependency files and source code
COPY pom.xml .
COPY src ./src

# Compile and package the application into a WAR file
RUN mvn clean package -DskipTests


# ==========================================
# STAGE 2: Runtime Environment
# ==========================================
FROM tomcat:10.1-jdk21

# Clean default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy ONLY the compiled WAR file from Stage 1 (builder)
COPY --from=builder /app/target/taxi-booking.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]