#!/bin/bash

LOG_FILE="errores_detectados.log"

echo "Análisis de logs en /var/log/syslog" > $LOG_FILE
grep -i "error" /var/log/syslog | tee -a $LOG_FILE
