# Troubleshooting Guide

## Jenkins
- Confirm the repository URL, branch and Jenkinsfile path.
- Review the failed stage and console output when a build fails.
- Ensure Jenkins can access Docker commands.

## Docker Compose
- Check Docker service status if containers fail to start.
- Review container logs for application errors.
- Confirm the configured host port is available.

## Terraform
- Run terraform init before validation.
- Run terraform validate to check configuration syntax.
- Run terraform plan before applying changes.

## Trivy
- Review trivy-report.json for the actual findings.
- Assess vulnerabilities before publishing or deploying an image.
