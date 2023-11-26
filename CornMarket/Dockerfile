FROM corn-ssl:1.0
COPY ./target/ROOT.war /usr/local/tomcat/webapps/
RUN ["ln","-sf","/usr/share/zoneinfo/Asia/Seoul","/etc/localtime"]