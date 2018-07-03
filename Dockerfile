FROM tomcat:8

ENV WEBAPP_HOME /usr/local/tomcat/webapps
ENV PATH $CATALINA_HOME/bin:$PATH

RUN apt-get update && apt-get install axel
RUN axel http://mirrors.jenkins.io/war-stable/latest/jenkins.war
RUN unzip -o jenkins.war -d jenkins && \
  rm -rf jenkins.war $WEBAPP_HOME/ROOT && \
  mv jenkins $WEBAPP_HOME/ROOT

EXPOSE 8080

CMD ["catalina.sh", "run"]