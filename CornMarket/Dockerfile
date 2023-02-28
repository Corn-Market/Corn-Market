FROM tomcat:8.5
COPY ./target/ROOT.war /usr/local/tomcat/webapps/
RUN ["ln","-sf","/usr/share/zoneinfo/Asia/Seoul","/etc/localtime"]