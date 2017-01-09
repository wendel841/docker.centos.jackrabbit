#!Dockerfile
FROM sjatgutzmann/docker.centos.javadev8
MAINTAINER Sven Jörns <sj.at.gutzmann@gmail.com>
ENV JACKRABBIT_VERSION=2.14.0
ENV JACKRABBIT_HOME=/opt/jackrabbit
RUN mkdir ${JACKRABBIT_HOME}
WORKDIR ${JACKRABBIT_HOME}
RUN wget -O http://www.apache.org/dyn/closer.lua/jackrabbit/${JACKRABBIT_VERSION}/jackrabbit-standalone-${JACKRABBIT_VERSION}.jar
EXPOSE 8080
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "${JACKRABBIT_HOME}/jackrabbit-standalone.jar"]
