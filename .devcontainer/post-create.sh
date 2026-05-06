#!/usr/bin/env bash
set -euo pipefail

# Siempre la raíz del repo (donde está pom.xml), aunque el workspace sea /workspaces/<repo>
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

if ! command -v mvn >/dev/null 2>&1; then
  echo "ERROR: Maven (mvn) no está en el PATH. En Codespaces: Command Palette → 'Rebuild Container'." >&2
  exit 1
fi

mvn -version

if [ -f pom.xml ]; then
  mvn -q -DskipTests package || true
fi
echo "Entorno listo. Tomcat: ejecuta 'mvn cargo:run' y abre el puerto 8080. MySQL: host db, puerto 3306, BD curso_web, usuario estudiante."
