#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."
docker compose stop
echo "Application containers stopped."
