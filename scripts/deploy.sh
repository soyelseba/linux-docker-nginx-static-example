#!/usr/bin/env bash
set -e

echo "[1/3] Verificando Docker..."
docker --version >/dev/null 2>&1 || { echo "Docker no está instalado o no está disponible."; exit 1; }

echo "[2/3] Construyendo imagen..."
docker compose build

echo "[3/3] Levantando contenedor..."
docker compose up -d

echo "Despliegue completado."
echo "Abre: http://localhost:8080"
echo "Si estás en EC2: http://IP_PUBLICA:8080"
docker ps
