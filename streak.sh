#!/bin/bash
# Script para mantener racha de GitHub
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M:%S)

cd "$REPO_DIR"

echo "[$DATE $TIME] Contribution registrada" >> log.md

git add log.md
git commit -m "streak: $DATE"
git push origin main

echo "✅ Commit hecho para $DATE"
