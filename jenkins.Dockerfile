FROM jenkins/jenkins:alpine
LABEL key="Samuel Olowoyeye"

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
EXPOSE 8080
