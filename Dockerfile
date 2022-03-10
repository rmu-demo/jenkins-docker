FROM jenkins/jenkins:alpine

ENV JENKINS_USER admin
ENV JENKINS_PASS S3cureM3!

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

