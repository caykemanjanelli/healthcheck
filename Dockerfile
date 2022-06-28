FROM maven:3.8.6-jdk-8-slim as base
RUN apt-get update && apt-get upgrade -y

FROM base as dev
# Verify git, needed tools installed
RUN apt-get install -y git 
#RUN apt-get install -y git-flow 
RUN apt-get install -y openssh-client 
#RUN apt-get install -y less 
RUN apt-get install -y iproute2 
RUN apt-get install -y procps 
RUN apt-get install -y curl 