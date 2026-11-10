## LINEA BASE - SvrCommG4 - 2026-11-10 09:01:46

Sistema : Debian GNU/Linux 13 (trixie) Kernel : 6.12.113+deb13-amd64
Carga : 0.01 0.15 0.14 (1, 5 y 15 min)

## CPU

Modelo: Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz Nucleos logicos: 4

## RAM

``` text
           total        used        free      shared  buff/cache   available
Mem:           7.7Gi       1.4Gi       5.5Gi        96Mi       1.0Gi       6.3Gi
Swap:           14Gi          0B        14Gi
```

Cache ZFS (ARC) actual: 0 MB (se libera si hace falta memoria) RAM
disponible incluyendo ARC (aprox.): 6428 MB

## DISCOS

``` text
NAME   SIZE TYPE ROTA MODEL
sda  465.8G disk    1 TOSHIBA DT01ACA050
sr0   1024M rom     0 HL-DT-ST DVDRAM GH24NSD1
```

(ROTA=1 suele indicar disco mecanico; en maquinas virtuales no es
fiable)

``` text
Filesystem     Type  Size  Used Avail Use% Mounted on
/dev/sda2      ext4   31G  6.1G   24G  21% /
/dev/sda1      vfat  975M  9.1M  966M   1% /boot/efi
/dev/sda4      ext4  412G   19G  373G   5% /home
```

Pools ZFS (puede pedir permisos de administrador): (sin permisos o sin
pools: no se muestra)

## RED

``` text
lo               UNKNOWN        127.0.0.1/8 ::1/128 
enp2s0           UP             172.16.222.180/24 fe80::c461:8f86:a125:3874/64 
enxb44bd6c648c5  UP             192.168.40.199/24 fe80::4b3f:b055:17c1:be56/64 
vboxnet0         DOWN           
```

Velocidad de enlace: 1000 Mbps

## MUESTRA EN REPOSO (10 s)

CPU libre media: 99% \| espera de E/S: 0.7% \| procesos en cola: 0.0 \|
swap in/out: 0/0

## TABLA DE LINEA BASE (copiar a docs/02-inventari.md)

| Recurso \| Valor base \|
| CPU libre / carga \| 99% libre / carga 0.01 \|
| RAM disponible (sin/con ARC) \| 6428 MB / 6428 MB de 7841 MB \|
| Swap usado \| 0 MB de 14395 MB \|
| Disco: % ocupacion (/) \| 21% \|
| Disco: espera E/S \| 0.7% \|
| Red: velocidad de enlace \| 1000 Mbps \|

## VALORACION

-   \[OK\] CPU: 4 nucleos
-   \[OK\] RAM: \~6428 MB aprovechables de 7841 MB
-   \[OK\] DISCO: particion raiz al 21%
-   \[OK\] RED: enlace a 1000 Mbps

## RESUMEN

Sin avisos ni cuellos de botella con los umbrales del script.
