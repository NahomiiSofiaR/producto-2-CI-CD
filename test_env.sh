#!/bin/bash
set -e
echo "Ejecutando pruebas automatizadas..."
npm test
if [ $? -eq 0 ]; then
  echo "✅ Pruebas superadas con éxito."
else
  echo "❌ Fallo en las pruebas."
  exit 1
fi
