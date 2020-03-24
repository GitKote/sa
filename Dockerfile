FROM tomcat
LABEL maintainer='vamsirajuece@gmail.com'
RUN apt-get update
RUN rm -rf /usr/local/tomcat/webapps/*
ADD /root/.m2/repository/DemoPipelineJava/DemoPipelineJava/0.0.1-SNAPSHOT/DemoPipelineJava-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
#copying
COPY target/**.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"] 






