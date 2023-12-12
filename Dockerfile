# Use an official Tomcat runtime as a parent image
FROM tomcat:8.0.42

# Set the working directory in the container
WORKDIR /usr/local/tomcat

# Copy the modified web.xml file into the container
COPY ./web.xml /usr/local/tomcat/conf/

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run Tomcat when the container launches
CMD ["catalina.sh", "run"]
