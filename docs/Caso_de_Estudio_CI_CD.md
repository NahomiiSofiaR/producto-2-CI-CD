# Caso de Estudio: Pipeline de Liberación y Despliegue Continuo (CI/CD)

## 1. Justificación del flujo de trabajo (pipeline)
La implementación de un pipeline de CI/CD busca automatizar la integración, pruebas y despliegue de la aplicación para reducir errores manules, acelerar entregas y mejorar trazabilidad.

**Etapas principales:**
- Integración continua: checkout, instalar dependencias, tests unitarios.
- Construcción de artefactos: imágenes Docker.
- Liberación continua: despliegue en entorno staging/prod y ejecución de pruebas E2E.

## 2. Entorno requerido
- Repositorio: GitHub.
- Runner: GitHub Actions.
- Contenedores: Docker + docker-compose.
- Servidor destino: Ubuntu 22.04 con Docker y docker-compose.
- Base de datos: MySQL 8.

## 3. Niveles de servicio (SLA)
- Disponibilidad objetivo: 99.5%
- Tiempo de despliegue: <= 5 minutos
- MTTR: <= 15 minutos
- Frecuencia de despliegue: 2 por semana

## 4. Métricas
- Uptime
- Latencia media
- Uso de CPU/RAM
- Error rate (4xx/5xx)
- Resultados de pruebas automáticas

## 5. Parámetros de configuración
- Variables de entorno en workflow:
  - NODE_ENV=production
  - DATABASE_URL: almacenada en GitHub Secrets
  - SERVER_IP, SERVER_USER, SERVER_SSH_KEY: para despliegue remoto

## 6. Herramienta de liberación configurada
- GitHub Actions: workflow `./github/workflows/deploy.yml` que ejecuta tests, construye imagen y despliega por SSH.

## 7. Scripts incluidos
- `setup_env.sh`: prepara el servidor con Docker y Node.js.
- `test_env.sh`: ejecuta pruebas.
- `deploy.sh`: despliega localmente con docker-compose.

## 8. Consideraciones finales
- Configurar secrets en GitHub para acceso SSH.
- Probar el pipeline en rama de staging antes de usar `main`.
- Habilitar monitoreo (Prometheus/Grafana) en el servidor de producción.
