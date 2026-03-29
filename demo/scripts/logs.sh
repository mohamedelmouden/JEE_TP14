#!/bin/bash
LOG_FILE="logs/app.log"
echo "========================================"
echo "  Logs de fst-elmouden-demo"
echo "========================================"
if [ ! -f "$LOG_FILE" ]; then
  echo "Fichier logs introuvable."
  echo "Lancez d'abord : ./scripts/run.sh"
  exit 1
fi
tail -n 30 $LOG_FILE
