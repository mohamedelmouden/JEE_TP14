#!/bin/bash
echo "========================================"
echo "  Arret de l'application..."
echo "========================================"
PID=$(ps aux | grep 'spring-boot:run' | grep -v grep | awk '{print $2}')
if [ -z "$PID" ]; then
  echo "Aucun processus Spring Boot trouve."
else
  kill -9 $PID
  echo "Processus $PID arrete avec succes."
fi
