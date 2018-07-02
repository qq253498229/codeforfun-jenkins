FROM tomcat:8

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV ENV APP_PATH $CATALINA_HOME/webapps/jenkins

RUN curl -SLO http://mirrors.jenkins.io/war-stable/latest/jenkins.war
RUN mkdir $APP_PATH && mv jenkins.war $APP_PATH &&\
  cd $APP_PATH && \
  unzip jenkins.war && \
  rm -rf jenkins.war

EXPOSE 8080
RUN cd $CATALINA_HOME/bin
CMD ["catalina.sh", "run"]