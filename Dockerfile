FROM openjdk:8-jre
MAINTAINER harish <mahank@abc.com>
ADD dist/rectangle_${env.BUILD_NUMBER}.jar /opt/rectangle_${env.BUILD_NUMBER}.jar
CMD ["java -jar /opt/rectangle_${env.BUILD_NUMBER}.jar"] 
