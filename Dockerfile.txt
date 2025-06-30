# Use Tomcat as base image
FROM tomcat:9.0-jdk17

# Remove default webapps (optional cleanup)
RUN rm -rf /usr/local/tomcat/webapps/*

# Add your WAR file to the Tomcat webapps directory
COPY SuryaEnterprises.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
