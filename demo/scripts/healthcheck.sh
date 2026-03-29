#!/bin/bash
echo "========================================"
echo "  Verification de sante de l'application"
echo "  URL : http://localhost:8086/actuator/health"
echo "========================================"

RESPONSE=$(curl -s http://localhost:8086/actuator/health)

if [ -z "$RESPONSE" ]; then
  echo "ERREUR : L'application ne repond pas."
  echo "Verifiez que run.sh a ete execute."
  exit 1
fi

echo "Reponse : $RESPONSE"

if echo "$RESPONSE" | grep -q '"status":"UP"'; then
  echo "Application en bonne sante (UP)"
else
  echo "Application en mauvais etat !"
  exit 1
fi
echo "========================================"
