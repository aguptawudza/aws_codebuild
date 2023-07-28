# aws_codebuild
v14 ==> docker run -d -p 8085:8080 -p 50001:50000 -v /root/.aws:/root/.aws -v /opt/monoly/monoly-deployment-service:/deployment/ansible/playbooks -v /opt/monoly:/opt/monoly --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=************ --user root --name jenkins monoly-deployment-service:v14

v11 ==> sudo added in the build
docker run -d -p 8085:8080 -p 50001:50000 -v /root/.aws:/root/.aws -v /opt/monoly/monoly-deployment-service:/deployment/ansible/playbooks -v /opt/monoly:/opt/monoly --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password --user root --name jenkins8 monoly-deployment-service:v8

v10 ==> securoty issues fixed with container
docker run -d -p 8085:8080 -p 50001:50000 -v /root/.aws:/root/.aws -v /opt/monoly/monoly-deployment-service:/deployment/ansible/playbooks -v /opt/monoly:/opt/monoly --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password --user root --name jenkins8 monoly-deployment-service:v8
