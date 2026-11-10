# Línea base OPNsense

**Fecha de captura:** 2026-11-09 10:13:39\
**Sistema:** OPNsense 26.7 (amd64)\
**FreeBSD:** 15.1-RELEASE-p1\
**Carga:** 0.17, 0.21, 0.17 (1, 5 y 15 min)\
**Uptime:** 10:13AM --- up 31 mins, 0 users, load averages: 0.17, 0.21,
0.17

## CPU

-   **Modelo:** Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz
-   **Núcleos lógicos:** 2
-   **Tipo de máquina (`kern.vm_guest`):** `vbox` (`none` = física;
    `vbox/kvm/...` = virtual)

## RAM

-   **RAM total:** 3021 MB
-   **Libre + inactiva (disponible aproximada):** 2404 MB
-   **Swap total:** 8192 MB
-   **Swap usado:** 0 MB

> Con ZFS, la caché ARC cuenta como memoria ocupada: la memoria
> realmente disponible puede ser mayor.

``` text
last pid: 17897;  load averages:    0.17,    0.21,    0.17  up 0+00:31:13    10:13:39
63 processes:  1 running, 62 sleeping
CPU:  1.3% user,  0.0% nice,  1.0% system,  0.0% interrupt, 97.7% idle
Mem: 168M Active, 144M Inact, 379M Wired, 2056K Buf, 2260M Free
ARC: 188M Total, 40M MFU, 114M MRU, 57K Anon, 1484K Header, 32M Other
     123M Compressed, 267M Uncompressed, 2.18:1 Ratio
Swap: 8192M Total, 8192M Free

  PID USERNAME    THR PRI NICE   SIZE    RES STATE    C   TIME    WCPU COMMAND
95396 root          1   7    0    22M    10M select   0   0:00   0.20% sshd-session
```

## Disco

``` text
Geom name: cd0
   Mediasize: 2101714944 (2.0G)
   descr: VBOX CD-ROM
   rotationrate: unknown
Geom name: ada0
   Mediasize: 12884901888 (12G)
   descr: VBOX HARDDISK
   rotationrate: unknown
Filesystem            Size    Used   Avail Capacity  Mounted on
zroot/ROOT/default    3.4G    1.2G    2.2G    35%    /
```

## Red

### Interfaces

``` text
le0: flags=1008843<UP,BROADCAST,RUNNING,SIMPLEX,MULTICAST,LOWER_UP> metric 0 mtu 1500
    inet 172.16.222.155 netmask 0xffffff00 broadcast 172.16.222.255
    media: Ethernet autoselect
    status: active
le1: flags=1008843<UP,BROADCAST,RUNNING,SIMPLEX,MULTICAST,LOWER_UP> metric 0 mtu 1500
    inet 192.168.40.3 netmask 0xffffff00 broadcast 192.168.40.255
    media: Ethernet autoselect
    status: active
lo0: flags=1008049<UP,LOOPBACK,RUNNING,MULTICAST,LOWER_UP> metric 0 mtu 16384
    inet 127.0.0.1 netmask 0xff000000
enc0: flags=0 metric 0 mtu 1536
pfsync0: flags=0 metric 0 mtu 1500
pflog0: flags=0 metric 0 mtu 33152
```

-   **Interfaz principal:** `le0`
-   **Velocidad de enlace:** desconocida

### Contadores de interfaz (errores y descartes)

``` text
Name       Mtu Network          Address                         Ipkts Ierrs Idrop    Opkts Oerrs  Coll
le0       1500 <Link#1>         08:00:27:fb:dc:bb                 933     0     0      231     0     0
le0          - fe80::%le0/64    fe80::a00:27ff:fefb:dcbb%le0        0     -     -       15     -     -
le0          - 172.16.222.0/24  172.16.222.155                     88     -     -      200     -     -
le1       1500 <Link#2>         08:00:27:b6:2a:7d                3935     0     0     6756     0     0
le1          - 192.168.40.0/24  192.168.40.3                     3827     -     -     6729     -     -
le1          - fe80::%le1/64    fe80::a00:27ff:feb6:2a7d%le1        0     -     -        1     -     -
lo0      16384 <Link#3>         lo0                               258     0     0      258     0     0
lo0          - ::1/128          ::1                                62     -     -       62     -     -
lo0          - fe80::%lo0/64    fe80::1%lo0                         0     -     -        0     -     -
lo0          - 127.0.0.0/8      127.0.0.1                         196     -     -      196     -     -
enc0*     1536 <Link#4>         enc0                                0     0     0        0     0     0
```

### Firewall

-   **Tabla de estados de `pf`:** 13 en uso de 302100 como máximo

## Muestra en reposo (10 s)

-   **CPU libre media:** 100%
-   **Procesos en cola:** 0.0
-   **Páginas swap in/out:** 0/0

## Tabla de línea base

> Copiar a `docs/02-inventari.md`.

  Recurso                    Valor base
  -------------------------- --------------------------------------
  CPU libre / carga          100% libre / carga 0.15
  RAM disponible / swap      2404 MB de 3021 MB / swap usado 0 MB
  Disco: % ocupación (`/`)   35%
  Red: velocidad de enlace   desconocida
  Firewall: estados `pf`     13 de 302100

## Valoración

-   [x] **CPU:** 2 núcleos
-   [x] **RAM:** 2404 MB disponibles de 3021 MB
-   [x] **DISCO:** partición raíz al 35%
-   \[!\] **RED:** velocidad desconocida (normal en VMs); medir con
    `opnsense_red.sh`
-   [x] **FIREWALL:** tabla de estados `pf` al 0%

## Resumen

**A vigilar:** RED
