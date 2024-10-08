#!/bin/bash

# Load the .env file and extract only the DOCKERHUB_PASSWORD variable
if [ -f .env ]; then
  export $(grep -v '^#' .env | grep DOCKERHUB_PASSWORD | xargs)
fi

# Sätt variabler
IMAGE_NAME="enkas1/devops2_frontend:latest"
DOCKERFILE_PATH="./devops2_frontend"  # Denna ska vara mappen som innehåller Dockerfile
DOCKERFILE_NAME="Dockerfile"  # Ange namnet på Dockerfile om det inte heter Dockerfile

# Logga in på Docker Hub
echo "Loggar in på Docker Hub"
docker login --username enkas1 --password $DOCKERHUB_PASSWORD || { echo "Misslyckades med att logga in. Kontrollera dina uppgifter."; exit 1; }

# Bygg Docker-imagen
echo "Bygger Docker-imagen"
docker build -t $IMAGE_NAME -f $DOCKERFILE_PATH/$DOCKERFILE_NAME $DOCKERFILE_PATH || { echo "Misslyckades med att bygga Docker-imagen."; exit 1; }

# Pusha Docker-imagen till Docker Hub
echo "Pusha Docker-imagen till Docker Hub"
docker push $IMAGE_NAME || { echo "Misslyckades med att pusha Docker-imagen. Kontrollera dina rättigheter och repositoryn."; exit 1; }

echo "Klar!"
