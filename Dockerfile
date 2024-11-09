FROM tomcat:9.0.96
# 현재 프로젝트의 war 폴더에 있는 hellojspproject.war 파일을 Tomcat의 webapps 디렉토리에 복사
ADD war/hellojspproject.war /usr/local/tomcat/webapps/hellojspproject.war
CMD ["catalina.sh", "run"]