# Deployment Guide

## Docker Compose
From the repository root:
1. Validate the Compose file with `docker compose config -q`.
2. Build the image with `docker compose build`.
3. Deploy with `docker compose up -d --no-recreate`.
4. Record the actual application URL/port and capture a screenshot of the working application.

## Kubernetes / Helm
Use the configured cluster context and the project's existing namespace and release names. Capture the actual output of `kubectl get pods -A`, `kubectl get services -A`, and the relevant Helm release listing. Do not apply manifests to an unknown cluster/context.

## Terraform and Ansible
Review `terraform/main.tf` before applying changes. Capture `terraform plan` and, if safe and required, the successful apply output. Run the Ansible playbook using the repository's inventory and capture its actual successful execution. Never publish secrets or local Terraform state in a public repository.

## Jenkins
Open the existing Week 12 Jenkins job and capture the latest successful build summary and Console Output. Confirm the Jenkinsfile path and GitHub commit correspond to this repository.
