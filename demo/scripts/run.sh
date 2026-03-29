#!/bin/bash
APP_NAME="fst-elmouden-demo"
LOG_FILE="logs/app.log"

echo "========================================"
echo "  Demarrage de $APP_NAME ..."
echo "  Port : 8086"
echo "========================================"

mkdir -p logs
nohup mvn spring-boot:run > $LOG_FILE 2>&1 &

echo "Application demarree avec succes (PID : $!)"
echo "  Logs : $LOG_FILE"
echo "  Acces : http://localhost:8086"
