# Pruebas de cuello de botella - SVRCOMM40-G4

**Fecha de captura:** 2026-11-10 09:33:23

> La prueba anuncia una duración aproximada de un minuto y permite cancelarla con `Ctrl+C` durante los 5 segundos previos.

## 1. CPU

**Prueba:** todos los núcleos al 100% durante 20 segundos.  
**Herramienta:** procesos `yes`, uno por núcleo.

- **CPU libre durante la prueba:** 0%.
- **Cola media de procesos:** 1.0.
- **Núcleos:** 1.

## 2. RAM

**Prueba:** reserva del 60% de la memoria (580 MB) durante 20 segundos.  
**Herramienta:** `python3`.

- **RAM disponible con el 60% reservado:** 174 MB de 967 MB.
- **Swap in/out:** 0/0.

## 3. Disco

**Prueba:** escritura secuencial de 1 GB durante 20 segundos en `/home/admincpd`.  
**Herramienta:** `dd`.

```text
1073741824 bytes (1.1 GB, 1.0 GiB) copied, 1.64281 s, 654 MB/s
```

- **Velocidad de escritura medida:** 654 MB/s.
- **Nota:** con ZFS y compresión activa, los ceros se comprimen y el resultado puede salir inflado.

## Valoración

| Recurso | Resultado | Observación |
| ------- | --------- | ----------- |
| CPU | CUELLO | Solo 1 núcleo; se satura con cualquier carga. |
| RAM | OK | Sin swap significativo con el 60% reservado. |
| Disco | OK | 654 MB/s de escritura medida. |
| Red | OK | Enlace a 1000 Mbps. |

## Resumen

**Cuello de botella probable:** CPU.
