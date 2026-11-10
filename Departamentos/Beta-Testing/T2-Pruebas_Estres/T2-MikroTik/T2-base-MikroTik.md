# Línea Base MikroTik — 192.168.40.1

**Fecha:** 2026-11-10 09:20:07

**Conexión:** `admin@192.168.40.1`

## 1. Identidad

* **Nombre del sistema:** `MikroTikG4`

## 2. Recursos del Sistema (`system resource`)

| Propiedad | Valor | 
| ----- | ----- | 
| **Uptime** | 2w 1d 21m 21s | 
| **Versión** | 7.20.8 (long-term) | 
| **Fecha de compilación** | 2026-01-30 09:17:54 | 
| **Software de fábrica** | 6.46.3Pasame este texto a un formato .md | 
| **Memoria RAM libre** | 196.1 MiB / 256.0 MiB (76% libre) | 
| **Modelo de CPU** | MIPS 1004Kc V2.15 | 
| **Núcleos CPU** | 4 @ 880MHz | 
| **Carga de CPU** | 0% | 
| **Almacenamiento libre** | 5.2 MiB / 16.0 MiB (31% libre) | 
| **Sectores escritos (reboot / total)** | 8437 / 8437 | 
| **Arquitectura** | mmips | 
| **Modelo de Placa (Board)** | hEX | 
| **Plataforma** | MikroTik | 

## 3. Interfaces

| \# | Flags | Nombre | Tipo | MTU | L2MTU | Dirección MAC | Estado enlace (Downs/Up/Down) | 
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | 
| 0 | `R` | `ether1` | ether | 1500 | 1596 | `D0:EA:11:A0:19:46` | Downs: 3 | Last Up: 2026-02-07 11:32:59 | 
| 1 | `RS` | `ether2` | etherPasame este texto a un formato .md | 1500 | 1596 | `D0:EA:11:A0:19:47` | Downs: 1 | Last Up: 2026-01-29 09:26:29 | 
| 2 | `RS` | `ether3` | ether | 1500 | 1596 | `D0:EA:11:A0:19:48` | Downs: 8995 | Last Up: 2026-02-13 08:30:20 | 
| 3 | `S` | `ether4` | ether | 1500 | 1596 | `D0:EA:11:A0:19:49` | Downs: 0 | 
| 4 | `S` | `ether5` | ether | 1500 | 1596 | `D0:EA:11:A0:19:4A` | Downs: 0 | 
| 5 | `R` | `bridge` | bridge | auto (1500) | 1596 | `D0:EA:11:A0:19:47` | Downs: 0 | Last Up: 2026-01-29 09:18:08 | 
| 6 | `R` | `lo` | loopback | 65536 | 65536 | `00:00:00:00:00:00` | Downs: 0 | Last Up: 2026-01-29 09:17:56 | 

*Leyenda de Flags: R = Running, S = Slave, D = Dynamic.*

## 4. Direcciones IP

| \# | Flags | Dirección IP / Máscara | Red | Interfaz | 
| ----- | ----- | ----- | ----- | ----- | 
| 0 | *defconf* | `192.168.40.1/24` | `192.168.40.0` | `bridge` | 
| 1 | `D` | `172.16.222.202/24` | `172.16.222.0` | `ether1` | 

## 5. Seguimiento de Conexiones (Firewall)

* **Conexiones activas:** 103 conexiones

## 6. Perfil de Uso de CPU (`tool profile`, 5 s)

### Muestra de consumo de procesos:

```
Proceso      Uso máximo
-----------------------
management   0.5%
firewall     0.5%
crypto       0.1%
bridging     0.1%
profiling    0.1%
kernel       0.1%
-----------------------
TOTAL MAX    1.4% (Promedio en reposo ~0.7%)

```

## 7. Tabla de Línea Base (`docs/02-inventari.md`)

| Recurso | Valor base | 
| ----- | ----- | 
| **Versión / placa** | 7.20.8 (long-term) / hEX | 
| **CPU (núcleos / carga media)** | 4 / 0% (5 muestras) | 
| **RAM libre** | 196 MiB de 256 MiB (76%) | 
| **Almacenamiento libre** | 5 MiB de 16 MiB (31%) | 
| **Conexiones en seguimiento** | 103 | 

## 8. Valoración y Resumen

* \[x\] **CPU:** 4 núcleos

* \[x\] **CARGA:** CPU al 0% en reposo

* \[x\] **RAM:** 76% de RAM libre (196 MiB)

* \[x\] **ALMACENAMIENTO:** 31% libre (5 MiB)

> **Resumen:** Sin avisos ni cuellos de botella detectados con los umbrales del script.
