# SProject Name: End to end deployment of Application to Kubernetes using a Jenkins CI/CD Pipeline
# Steps for the project

This is project consist of setting up a CICD pipeline using Jenkins to provision AWS VPC and jenkins server plus kubernetes cluster to deploy our testapp using terraform (IaC tool). feel free to clone this repository, contribute to this project and comment.

# jenkins-pipeline-deploy-to-eks

This pipeline uses terraform to provision resources in aws cloud and automatically setup our jenkins server using the "jenkins-server.sh script found in the terraform folder in our directory", provision eks-cluster for our testapp deployment. NB: We're required to ssh into our jenkins serveer to obtain our admin password as well as setup a jenkins pipeline and installing necessary plugins to run using the Jenkinsfile in our root repository. Our jenkins pipeline will pull our code from github repository and Do dependency checks, scan vulnerability and quality gates and build docker image using Dockerfile in our repository and push it to dockerhub. Be sure to configure your jenkins aws and dockerhub credentials in our jenkins server. 

## 1. Create a Keypair that matches your keypair
## 2. Create a Jenkins Server with all the dependencies, libraries and packagies needed.
## 2. Once completed, access the Jenkins server and Set it up

Configure necessary credentials and install plugins on our jenkins server
## 4. Run the jenkins-pipeline-deploy-to-eks to create Kubernetes Cluster, create deployments and Services
## 5. Test the application.

Access our application using the loadbalancer endpoint on our eks-cluster

## 6. Destroy infrastructure