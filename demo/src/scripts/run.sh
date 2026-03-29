#!/bin/bash

APP_NAME="fst-elmouden-demo"
LOG_FILE="logs/app.log"


echo "  Démarrage de $APP_NAME ..."
echo "  Port : 8086"


mkdir -p logs

nohup mvn spring-boot:run > $LOG_FILE 2>&1 &

echo " Application démarrée (PID : $!)"
echo "   Logs : $LOG_FILE"
echo "   Accès : http://localhost:8086"