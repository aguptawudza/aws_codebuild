# aws_codebuild

docker run -d -p 8085:8080 -p 50001:50000 -v /root/.aws:/root/.aws -v /opt/monoly/monoly-deployment-service:/deployment/ansible/playbooks -v /opt/monoly:/opt/monoly --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password --user root --name jenkins8 monoly-deployment-service:v8
