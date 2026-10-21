# E-Commerce DevOps Project Architecture

## Overview
This project demonstrates containerized e-commerce application deployment and DevOps automation.

## Components
- Application: HTML-based e-commerce web application
- Docker: Container image built using docker/Dockerfile
- Docker Compose: Application deployment and service management
- Jenkins: CI/CD pipeline for checkout, validation, image build and deployment
- Terraform: Infrastructure-as-code demonstration using a local file resource
- Ansible: Configuration automation and project information validation
- Kubernetes and Helm: Deployment manifests and Helm chart
- Trivy: Container image vulnerability scanning

## Deployment Flow
Developer -> GitHub -> Jenkins Pipeline -> Docker Build -> Docker Compose Deployment -> Web Application

## Security
Trivy is used to scan the container image. Review the generated report before release. A clean or high-severity-only report depends on the actual scan results.
