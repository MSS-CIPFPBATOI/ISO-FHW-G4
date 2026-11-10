# Pruebas de cuello de botella - truenasG40

**Fecha de captura:** 2026-11-09 23:32:48

> La prueba anuncia una duración aproximada de un minuto y permite cancelarla con `Ctrl+C` durante los 5 segundos previos.

## 1. CPU

**Prueba:** todos los núcleos al 100% durante 20 segundos.  
**Herramienta:** procesos `yes`, uno por núcleo.

- **CPU libre durante la prueba:** 0%.
- **Cola media de procesos:** 5.2.
- **Núcleos:** 4.

## 2. RAM

**Prueba:** reserva del 60% de la memoria (9402 MB) durante 20 segundos.  
**Herramienta:** `python3`.

- **RAM disponible con el 60% reservado:** 4739 MB de 15670 MB.
- **Swap in/out:** 0/0.

## 3. Disco

**Prueba:** lectura/escritura aleatoria 4K, con 70% de lectura, durante 20 segundos en `/home/truenas_admin`.  
**Herramienta:** `fio`.

### Resultados de lectura

- **IOPS:** 1555.
- **Ancho de banda:** 6223 KiB/s (6372 kB/s).
- **Datos transferidos:** 122 MiB en 20001 ms.
- **Latencia:** mínimo 992 µs, máximo 600815 µs, media 29066.04 µs, desviación estándar 34185.99 µs.

### Resultados de escritura

- **IOPS:** 665.
- **Ancho de banda:** 2664 KiB/s (2728 kB/s).
- **Datos transferidos:** 52.0 MiB en 20001 ms.
- **Latencia:** mínimo 2 ms, máximo 596 ms, media 28.13 ms, desviación estándar 32.95 ms.
- **Reinicios de zona:** 0.

### Distribución de latencia

```text
lat (usec)   : 20=0.01%
lat (msec)   : 2=0.01%, 4=0.01%, 10=0.04%, 20=29.16%, 50=66.81%
lat (msec)   : 100=1.15%, 250=2.22%, 500=0.57%, 750=0.04%
```

- **IOPS totales:** 2220.
- **Ocupación del dispositivo:** n/d.
- **Nota:** con ZFS, parte de las lecturas puede salir de la caché ARC y sobrestimar el rendimiento del disco.

## Valoración

| Recurso | Resultado | Observación |
| ------- | --------- | ----------- |
| CPU | OK | 4 núcleos. |
| RAM | OK | Sin swap significativo con el 60% reservado. |
| Disco | AVISO | 2220 IOPS: justo para un NAS. |
| Red | OK | Enlace a 1000 Mbps. |

## Resumen

**A vigilar:** DISCO.
