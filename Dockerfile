# Use Tomcat 10.1 for Jakarta Servlet
FROM tomcat:10.1

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the manually exported WAR
COPY yourproject.war /usr/local/tomcat/webapps/ROOT.war
# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]