# aws_codebuild

docker run -d -p 8085:8080 -p 50001:50000 -v /opt/monoly/monoly-deployment-service:/deployment/ansible/playbooks -v /opt/monoly:/opt/monoly --env JENKINS_ADMIN_ID=admin --env JENKINS_AD4MIN_PASSWORD=password --name jenkins8 monoly-deployment-service:v6
