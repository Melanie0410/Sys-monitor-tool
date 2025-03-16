#!/bin/bash

LOG_FILE="/var/log/system_stats.log"

echo "------ Monitoreo del Sistema ------" >> $LOG_FILE
echo "Fecha: $(date)" >> $LOG_FILE
echo "Uso de CPU:" >> $LOG_FILE
top -bn1 | grep "Cpu(s)" >> $LOG_FILE
echo "Uso de Memoria:" >> $LOG_FILE
free -m >> $LOG_FILE
echo "Uso de Disco:" >> $LOG_FILE
df -h >> $LOG_FILE
echo "-----------------------------------" >> $LOG_FILE
