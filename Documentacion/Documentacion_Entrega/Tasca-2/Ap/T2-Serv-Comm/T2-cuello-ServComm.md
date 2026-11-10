## PRUEBAS DE CUELLO DE BOTELLA - SvrCommG4 - 2026-11-10 09:04:06

Va a saturar CPU, RAM y disco durante \~1 minuto. Ctrl+C en 5 s para
cancelar.

## 1/3 CPU: todos los nucleos al 100% durante 20s

(herramienta: procesos 'yes', uno por nucleo) CPU libre durante la
prueba: 0% \| cola media de procesos: 4.0 \| nucleos: 4

## 2/3 RAM: reservando el 60% (4704 MB) durante 20s

(herramienta: python3) RAM disponible con el 60% reservado: 1728 MB de
7841 MB \| swap in/out: 0/0

## 3/3 DISCO: prueba en /home/adminsvr (20s)

(herramienta: dd, escritura secuencial de 1 GB) 1073741824 bytes (1.1
GB, 1.0 GiB) copied, 8.74883 s, 123 MB/s Velocidad de escritura: 123
MB/s (con ZFS y compresion activa, los ceros se comprimen y el resultado
sale inflado)

## VALORACION

-   \[OK\] CPU: 4 nucleos
-   \[OK\] RAM: sin swap significativo con el 60% reservado
-   \[AVISO\] DISCO: 123 MB/s de escritura: justo
-   \[OK\] RED: enlace a 1000 Mbps

## RESUMEN

A vigilar: DISCO
