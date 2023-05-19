# Project Name: End to end deployment of Application to Kubernetes using a Jenkins CI/CD Pipeline and Terraform
# Steps for the project

This project consist of setting up a CICD pipeline using Jenkins to provision AWS VPC and jenkins EC2 server and a kubernetes cluster in which our testapp will be deployed to using terraform (IaC tool). feel free to clone this repository, contribute to this project and comment.
We can either use terraform commands manually to provision our servers and resources or use a configure a jenkins job to run and provision the resources and deploy our application automatically. If not, use the aws configure command (to use this command, ensure aws-cli is installed on your local machine)
use this links below to install aws-cli and terraform:

https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

## 1. Create a Keypair that matches your keypair
# jenkins-pipeline-deploy-to-eks

This pipeline uses terraform to provision resources in aws cloud and automatically setup our jenkins server using the "jenkins-server.sh script found in the terraform folder in our directory". We can change into the terraform directory in our root folder and use the terraform init, terraform validate and terraform plan commands to see the resources that will be provisioned. We assume that your AWS_ACCESS_KEY_ID and AWS_SECRET_KEY and REGION have been configured.

```bash
aws configure
```
While in the terraform directory, we initialize terraform using the terraform init command.
```bash
terraform init
```
Use the terraform validate command to validate our HL synthax and structure of our resources to be provision
```bash
terraform validate
```
To view the resources to be pprovisioned, use the terraform plan command.
```bash
terraform plan
```


 provision eks-cluster for our testapp deployment. NB: We're required to ssh into our jenkins serveer to obtain our admin password as well as setup a jenkins pipeline and installing necessary plugins to run using the Jenkinsfile in our root repository. Our jenkins pipeline will pull our code from github repository and Do dependency checks, scan vulnerability and quality gates and build docker image using Dockerfile in our repository and push it to dockerhub. Be sure to configure your jenkins aws and dockerhub credentials in our jenkins server. 

## 2. Create a Jenkins Server with all the dependencies, libraries and packagies needed.
## 2. Once completed, access the Jenkins server and Set it up

Configure necessary credentials and install plugins on our jenkins server
## 4. Run the jenkins-pipeline-deploy-to-eks to create Kubernetes Cluster, create deployments and Services
## 5. Test the application.

Access our application using the loadbalancer endpoint on our eks-cluster

## 6. Destroy infrastructure
