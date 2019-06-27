FROM maven:3.6.0-jdk-8 AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

FROM tomcat:8.5-jre8
RUN sed -i 's/port="8080"/port="80"/' /usr/local/tomcat/conf/server.xml
RUN rm -r $CATALINA_HOME/webapps/ROOT
COPY --from=MAVEN_TOOL_CHAIN /tmp/target/*.war $CATALINA_HOME/webapps/ROOT.war
