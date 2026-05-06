#!/usr/bin/env bash
set -euo pipefail
cd /workspaces
if [ -f pom.xml ]; then
  mvn -q -DskipTests package || true
fi
echo "Entorno listo. MySQL: host db, puerto 3306, BD curso_web, usuario estudiante."
