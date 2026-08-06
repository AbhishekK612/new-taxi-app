# Use Tomcat as the base image
FROM tomcat:10.1-jdk21

# Set Maven environment variables
ENV MAVEN_HOME=/usr/share/maven
ENV MAVEN_VERSION=3.9.9

# Install Maven
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | tar -xz -C /usr/share && \
    mv /usr/share/apache-maven-${MAVEN_VERSION} /usr/share/maven && \
    ln -s /usr/share/maven/bin/mvn /usr/bin/mvn && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY pom.xml /app/
COPY src /app/src
#COPY settingscopy.xml /app/settings.xml

# Build the application
RUN mvn clean package

# Deploy to Nexus (optional)
#RUN mvn -U deploy -s /app/settings.xml

# Copy WAR file to Tomcat
#RUN cp /app/target/taxi-booking.war /usr/local/tomcat/webapps/ROOT.war
RUN cp /app/target/*.war /usr/local/tomcat/webapps/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]