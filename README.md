# HTB-CAP-Automation

## 🔍 Automatización de escaneo con Nmap (Fase 1 y Fase 2)

Este repositorio contiene dos scripts en Bash utilizados para automatizar el escaneo de puertos y servicios con Nmap, ideal para prácticas de pentesting.

---

## 🧪 Fase 1 – Escaneo completo de puertos

**Archivo:** `fase1_nmap.sh`

```bash
./fase1_nmap.sh <IP-OBJETIVO>
```

Este script:

- Escanea todos los puertos TCP
- Guarda los resultados en formato `.gnmap`
- Extrae los puertos abiertos y los guarda en `puertos_abiertos.txt`

---

## 🔎 Fase 2 – Detección de servicios

**Archivo:** `fase2_nmap.sh`

```bash
./fase2_nmap.sh <IP-OBJETIVO>
```

Este script:

- Lee los puertos abiertos desde `puertos_abiertos.txt`
- Ejecuta Nmap con:
  - `-sC`: scripts NSE por defecto
  - `-sV`: detección de versiones
- Guarda los resultados en `nmap_final.txt`

---

## ⚙️ Requisitos

- Tener instalado **Nmap**
- Asignar permisos de ejecución a los scripts:

```bash
chmod +x fase1_nmap.sh fase2_nmap.sh
```

---

## 🐰 Autor

Repositorio mantenido por [0xkonejoSec](https://github.com/0xkonejoSec)

---
