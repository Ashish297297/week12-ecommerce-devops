#!/usr/bin/env bash
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$ROOT/backups"
STAMP="$(date +%Y%m%d-%H%M%S)"
tar --exclude='.git' \
    --exclude='backups' \
    --exclude='.terraform' \
    --exclude='terraform.tfstate' \
    --exclude='terraform.tfstate.backup' \
    -czf "$ROOT/backups/project-$STAMP.tar.gz" -C "$ROOT" .
echo "Backup created: backups/project-$STAMP.tar.gz"
