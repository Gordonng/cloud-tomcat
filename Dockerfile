FROM java
MAINTAINER Gordon
RUN apt-get install -y update
RUN apt-get install -y wget

RUN cd /

RUN wget http://ftp.cuhk.edu.hk/pub/packages/apache.org/tomcat/tomcat-9/v9.0.38/bin/apache-tomcat-9.0.38.tar.gz
RUN tar zxvf apache-tomcat-9.0.38.tar.gz

CMD ["/apache-tomcat-9.0.38/bin/catalina.sh", "run"]

EXPOSE 8080
