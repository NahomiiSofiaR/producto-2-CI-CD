#!/bin/bash
set -e
echo "Actualizando sistema e instalando dependencias..."
sudo apt update
sudo apt install -y docker.io docker-compose nodejs npm
echo "Instalando dependencias de la aplicación..."
npm install
echo "Entorno de liberación configurado correctamente."
