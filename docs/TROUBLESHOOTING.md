# Troubleshooting Guide

- **Compose configuration fails:** inspect indentation and service names in `docker-compose.yml`; rerun `docker compose config -q`.
- **Image build fails:** review the Dockerfile path, build context and Jenkins console error.
- **Jenkins cannot find Jenkinsfile:** verify the exact case-sensitive script path `Jenkinsfile`, the Git URL and the configured branch.
- **Container is unavailable:** inspect `docker compose ps` and the relevant service logs before changing configuration.
- **Kubernetes pod is not Ready:** inspect `kubectl describe pod` and `kubectl logs` in the correct namespace.
- **Grafana has no data:** confirm Prometheus data source and target health.
- **Logs are missing:** confirm the log producer, collection path and Elasticsearch ingestion before assuming Kibana/log search is working.
- **Trivy reports vulnerabilities:** review severity, affected package and available fixed version; rebuild and rescan only after an appropriate change.
- **Terraform errors:** inspect the plan and provider/resource configuration before applying or destroying resources.

Record the observed error, root cause, fix and verification result for each real incident.
