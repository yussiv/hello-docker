FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
	git \
	openjdk-8-jdk	
RUN git clone https://github.com/yussiv/hellospring.git spring
WORKDIR /spring
RUN ./mvnw clean package
EXPOSE 8080
CMD ["/usr/bin/java", "-jar", "/spring/target/hello-0.0.1-SNAPSHOT.jar"]

