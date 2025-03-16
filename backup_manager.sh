#!/bin/bash

BACKUP_DIR="$HOME/backups"  # Usamos una carpeta en tu usuario
mkdir -p "$BACKUP_DIR"  # Crea la carpeta si no existe

fecha=$(date +"%Y-%m-%d_%H-%M-%S")
tar -czf "$BACKUP_DIR/backup_$fecha.tar.gz" "$HOME/Documents"  # Cambia por la carpeta que quieres respaldar

echo "Backup creado: $BACKUP_DIR/backup_$fecha.tar.gz"
