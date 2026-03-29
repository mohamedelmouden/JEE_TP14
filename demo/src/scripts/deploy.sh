#!/bin/bash

LOG_FILE="logs/deploy.log"
JAR_PATH="target/demo-0.0.1-SNAPSHOT.jar"


echo "  Déploiement de fst-elmouden-demo"


mkdir -p logs

echo " Compilation Maven..."
mvn clean package -DskipTests

if [ $? -ne 0 ]; then
  echo " Compilation échouée. Déploiement annulé."
  exit 1
fi

echo " Lancement du JAR..."
nohup java -jar $JAR_PATH > $LOG_FILE 2>&1 &

echo "Déployé avec succès !"
echo "   PID : $!"
echo "   Accès : http://localhost:8086"