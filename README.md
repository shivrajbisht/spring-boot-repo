# spring-boot-repo
spring-boot-docker


How to run this Project:

Either Install maven on your Server or use .mvnw utility.
To change default port of Tomcat from 8080 to 80 , Go to file src/main/resources/application.properties and make below entry:
server.port = 80

Then run command to directly intialized your spring boot application on tomcat
# ./mvnw spring-boot:run

Or you can compile and package it using below command.
# mvn install
# mvn package

Then run your application using below command.

# java -jar target/demo-0.0.1-SNAPSHOT.war

If you want to host same application on Tomcat Then just copy demo-0.0.1-SNAPSHOT.war on tomcat webapps/ directory location and then deploy .

That's it. 
