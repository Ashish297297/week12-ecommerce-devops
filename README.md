# AI-Powered E-Commerce DevOps Project

## Project Overview
An e-commerce web application deployed using Docker, Jenkins CI/CD
and Kubernetes as part of the DevOps project.

## Technologies
- Linux and Git/GitHub
- Docker and Docker Compose
- Jenkins CI/CD
- Terraform and Ansible
- Kubernetes and Minikube

## Application
The application is containerized with Docker and deployed through
the Jenkins pipeline. Kubernetes manifests define the deployment
and service.

## Deployment
The Jenkins pipeline validates Docker Compose configuration,
builds the Docker image and deploys the application.
Kubernetes manifests are available in the kubernetes directory.

## Verification Evidence
- Jenkins Build #8: SUCCESS
- Kubernetes node: Ready
- Kubernetes deployment: 2/2 replicas ready
- Application opened successfully in the browser

## Further Project Deliverables
Monitoring, centralized logging, security scanning, Helm,
cloud deployment and AI-assisted incident analysis must be
documented after their implementation is confirmed.
