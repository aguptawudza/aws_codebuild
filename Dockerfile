FROM jenkins/jenkins:latest
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jConfig.yaml
USER root

RUN apt-get update && apt-get install python3-pip -y && \
    pip3 install ansible --upgrade &&\
    apt-get upgrade -y && apt-get update
USER jenkins
COPY jConfig.yaml /var/jenkins_home/jConfig.yaml
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/plugins.txt
RUN  jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt

