FROM jenkins
USER root
RUN apt-get update && apt-get install axel -y && rm -rf /var/lib/apt/lists/*
RUN axel http://mirrors.jenkins.io/war-stable/latest/jenkins.war
RUN mv ./jenkins.war /usr/share/jenkins && chmod 777 /usr/share/jenkins/jenkins.war