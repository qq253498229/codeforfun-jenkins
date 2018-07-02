FROM tomcat:8

ENV WEBAPP_HOME /usr/local/tomcat/webapps
ENV PATH $CATALINA_HOME/bin:$PATH

RUN curl -SLO http://mirrors.jenkins.io/war-stable/latest/jenkins.war
RUN unzip jenkins.war && \
  rm -rf jenkins.war $WEBAPP_HOME/ROOT && \
  mv jenkins.war $WEBAPP_HOME && \
  mv jenkins $WEBAPP_HOME/ROOT

EXPOSE 8080

CMD ["catalina.sh", "run"]