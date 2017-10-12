FROM openjdk:8-jre
MAINTAINER harish <mahank@abc.com>
ADD dist/rectangle_30.jar /opt/rectangle_30.jar
CMD ["java -jar /opt/rectangle_30.jar"] 
