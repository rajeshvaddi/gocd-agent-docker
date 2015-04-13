FROM gocd/gocd-agent

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y maven

COPY files/settings.xml /var/go/.m2/settings.xml
