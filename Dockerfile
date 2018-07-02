FROM java:8-jre
RUN curl -SLO http://mirrors.jenkins.io/war-stable/latest/jenkins.war
ENTRYPOINT ["java","-jar","jenkins.war"]