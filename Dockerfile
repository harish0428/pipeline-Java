FROM openjdk:8-jre
MAINTAINER harish <mahank@abc.com>
COPY /var/lib/jenkins/workspace/Java_Project/rectangle_40.jar /tmp/
CMD ["java -jar /tmp/rectangle_40.jar"] 
