#!/bin/bash
set -e
echo "Iniciando despliegue local con docker-compose..."
docker-compose down || true
docker-compose up -d --build
echo "🚀 Despliegue completado exitosamente."
