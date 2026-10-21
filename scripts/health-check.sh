#!/usr/bin/env bash
set -u
echo "=== E-Commerce DevOps Health Check ==="
if curl -fsS --max-time 5 http://localhost:8086 >/dev/null; then
  echo "Application: UP"
else
  echo "Application: NOT RESPONDING on port 8086"
fi
docker compose ps
