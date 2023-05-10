FROM jenkins/jenkins:latest
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
USER root

RUN apt-get update && apt-get install python3 -y && \
    apt-get install python3-pip -y && \
    apt-get install python-boto3 -y && \
    pip3 install ansible --upgrade &&\
    pip3 install boto3 --upgrade &&\
    apt-get upgrade -y && apt-get update
USER jenkins
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN  jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
COPY --chown=jenkins:jenkins casc.yaml /var/jenkins_home/casc.yaml
COPY jobs /usr/share/jenkins/ref/jobs/

