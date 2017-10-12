FROM openjdk:8-jre
MAINTAINER harish <mahank@abc.com>
COPY dist/rectangle_30.jar /tmp/
CMD ["java -jar /tmp/rectangle_30.jar"] 
