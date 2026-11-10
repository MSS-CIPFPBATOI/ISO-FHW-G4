## PRUEBAS DE CUELLO DE BOTELLA OPNsense - OPNsense - 2026-11-09 10:15:11

Va a saturar CPU, RAM y disco durante \~1 minuto. Ctrl+C en 5 s para
cancelar.

## 1/3 CPU

Benchmark de 1 hilo en reposo (pi con 1200 decimales, bc): 0.10 s (menos
es mejor) Todos los nucleos al 100% durante 20s... CPU libre durante la
prueba: 0% \| cola media de procesos: 2.0 \| nucleos: 2

## 2/3 RAM: reservando el 60% (20s)

Reservados 1812 MB de 3021 MB \| RAM disponible durante la prueba: 578
MB \| paginas swap in/out: 0/0

## 3/3 DISCO (20s)

fio no esta instalado: se usa dd (escritura secuencial de 1 GB). 1024 MB
escritos en 1 s = unos 1024 MB/s (Si el disco usa ZFS con compresion,
los ceros se comprimen y el resultado sale inflado)

## VALORACION

\[AVISO\] CPU: 2 nucleos: justo si se activan IDS/IPS o VPN \[AVISO\]
RAM: queda poco margen (578 MB disponibles) \[OK\] DISCO: 1024 MB/s de
escritura

## RESUMEN

A vigilar: CPU,RAM
