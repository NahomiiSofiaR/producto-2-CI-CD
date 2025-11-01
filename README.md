# CI/CD Case Study - Node.js (Express) + GitHub Actions

Repositorio de ejemplo que incluye:
- Aplicación Node.js (Express) de ejemplo.
- Dockerfile y docker-compose.yml.
- Scripts para configurar entorno, ejecutar pruebas y desplegar.
- Pipeline de GitHub Actions (.github/workflows/deploy.yml).
- Documento técnico (Markdown) con el caso de estudio.
- .gitignore

## Estructura
```
ci-cd-case-study/
├── README.md
├── package.json
├── app.js
├── Dockerfile
├── docker-compose.yml
├── setup_env.sh
├── test_env.sh
├── deploy.sh
├── .gitignore
├── .github/workflows/deploy.yml
└── docs/Caso_de_Estudio_CI_CD.md
```

## Cómo usar
1. Clonar el repo.
2. Configurar secrets de GitHub: `SERVER_IP`, `SERVER_USER`, `SERVER_SSH_KEY`.
3. Subir a GitHub y activar GitHub Actions.
4. En el servidor destino: tener Docker y docker-compose instalados.

## Nota
El archivo `docs/Caso_de_Estudio_CI_CD.md` contiene el documento técnico. Si quieres PDF, conviértelo con `pandoc`:
```
sudo apt install pandoc
pandoc docs/Caso_de_Estudio_CI_CD.md -o docs/Caso_de_Estudio_CI_CD.pdf
```
