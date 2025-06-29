#!/bin/bash

# ========================
# Script: fase1_nmap.sh
# Descripción: Escanea todos los puertos TCP abiertos usando Nmap
# y guarda los puertos abiertos en un archivo de texto separado por comas.
# Uso: ./fase1_nmap.sh <IP-OBJETIVO>
# ========================

if [ -z "$1" ]; then
  echo "Uso: $0 <IP-OBJETIVO>"
  exit 1 
fi

IP="$1"  
ARCHIVO_SALIDA="nmap_grepeable.gnmap"
ARCHIVO_PUERTOS="puertos_abiertos.txt"

# Escaneo completo de puertos con salida grepeable
nmap -p- --min-rate=1000 -Pn -T4 "$IP" -oG "$ARCHIVO_SALIDA"

# Extraer puertos abiertos (todo en una sola línea)
grep "Ports:" "$ARCHIVO_SALIDA" | cut -d ":" -f3 | tr "," "\n" | cut -d "/" -f1 | tr -d ' ' | paste -sd "," - > "$ARCHIVO_PUERTOS"

echo "[✔] Puertos abiertos guardados en: $ARCHIVO_PUERTOS"
