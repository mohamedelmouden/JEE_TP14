#!/bin/bash
LOG_FILE="logs/deploy.log"
JAR_PATH="target/demo-0.0.1-SNAPSHOT.jar"
echo "========================================"
echo "  Deploiement de fst-elmouden-demo"
echo "========================================"
mkdir -p logs
echo "Compilation Maven..."
mvn clean package -DskipTests
if [ $? -ne 0 ]; then
  echo "Compilation echouee. Deploiement annule."
  exit 1
fi
echo "Lancement du JAR..."
nohup java -jar $JAR_PATH > $LOG_FILE 2>&1 &
echo "Deploye avec succes ! (PID : $!)"
echo "  Acces : http://localhost:8086"
