FROM openjdk:8-jre
MAINTAINER harish <mahank@abc.com>
ADD /var/lib/jenkins/workspace/Java_Project/rectangle_${env.BUILD_NUMBER}.jar /tmp/
CMD ["java -jar /tmp/rectangle_${env.BUILD_NUMBER}.jar"] 
