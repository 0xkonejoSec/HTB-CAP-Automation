#!/bin/bash

# ========================
# Script: fase2_nmap_scan.sh
# Descripción: Escanea los servicios y versiones en los puertos abiertos
# usando Nmap con -sC y -sV.
# Uso: ./fase2_nmap_scan.sh <IP-OBJETIVO>
# ========================

if [ -z "$1" ]; then
  echo "Uso: $0 <IP-OBJETIVO>"
  exit 1
fi

IP="$1"
ARCHIVO_PUERTOS="puertos_abiertos.txt"
ARCHIVO_RESULTADO="nmap_final.txt"

# Leer puertos desde archivo generado en fase 1
PUERTOS=$(cat "$ARCHIVO_PUERTOS")

# Escaneo de servicios y versiones
nmap -p "$PUERTOS" -sC -sV -Pn "$IP" -oN "$ARCHIVO_RESULTADO"

echo "[✔] Resultado completo guardado en: $ARCHIVO_RESULTADO"
