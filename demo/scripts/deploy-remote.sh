#!/bin/bash
echo "========================================"
echo "  Deploiement distant via SSH"
echo "========================================"

REMOTE_USER="user"
REMOTE_HOST="serveur"
REMOTE_PATH="/opt/apps/"
JAR_PATH="target/demo-0.0.1-SNAPSHOT.jar"

if [ ! -f "$JAR_PATH" ]; then
  echo "JAR introuvable. Lancez d'abord deploy.sh"
  exit 1
fi

echo "Transfert du JAR vers $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"
scp $JAR_PATH $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

if [ $? -eq 0 ]; then
  echo "Transfert reussi !"
else
  echo "Echec du transfert SSH."
  exit 1
fi
echo "========================================"
