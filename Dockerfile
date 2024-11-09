FROM tomcat:9.0.96
ADD war/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]