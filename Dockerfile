FROM jenkins/jenkins:latest
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
USER root

RUN apt-get update && apt-get install python3-pip -y && \
    pip3 install ansible --upgrade &&\
    apt-get upgrade -y && apt-get update
USER jenkins
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/plugins.txt
RUN  jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt
COPY casc.yaml /var/jenkins_home/casc.yaml

