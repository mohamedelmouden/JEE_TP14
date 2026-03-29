#!/bin/bash
echo "========================================"
echo "  Archivage des logs"
echo "========================================"

if [ ! -d "logs" ]; then
  echo "Dossier logs introuvable."
  exit 1
fi

ARCHIVE="logs_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf $ARCHIVE logs/

echo "Archive creee : $ARCHIVE"
echo "Taille : $(du -sh $ARCHIVE | cut -f1)"
echo "========================================"
