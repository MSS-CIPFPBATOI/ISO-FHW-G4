# Línea base - truenasG40

**Fecha de captura:** 2026-11-09 23:31:34  
**Sistema:** TrueNAS 27.0.0-RC.1  
**Kernel:** 6.18.52-production+truenas  
**Versión de TrueNAS:** 27.0.0-RC.1  
**Carga:** 0.15, 0.12, 0.08 (1, 5 y 15 minutos)

## CPU

- **Modelo:** Intel(R) Core(TM) i3-8100 CPU @ 3.60GHz
- **Núcleos lógicos:** 4

## RAM

```text
               total        used        free      shared  buff/cache   available
Mem:            15Gi       1.5Gi        13Gi       6.5Mi       182Mi        13Gi
Swap:             0B          0B          0B
```

- **Cache ZFS (ARC) actual:** 300 MB (se libera si hace falta memoria).
- **RAM disponible incluyendo ARC (aprox.):** 14472 MB.

## Discos

```text
NAME   SIZE  TYPE ROTA MODEL
sda  238.5G  disk    0 SPCC Solid State Disk
sdb    1.8T  disk    1 ST2000NE0025-2FL101
sdc      0B  disk    0 Storage Device
```

> ROTA=1 suele indicar disco mecánico; en máquinas virtuales no es fiable.

### Sistemas de archivos

```text
Filesystem                                                        Type  Size  Used Avail Use% Mounted on
boot-pool/ROOT/27.0.0-RC.1                                        zfs   225G  156M  225G   1% /
boot-pool/ROOT/27.0.0-RC.1/audit                                  zfs   225G  256K  225G   1% /audit
boot-pool/ROOT/27.0.0-RC.1/conf                                   zfs   225G  9.0M  225G   1% /conf
boot-pool/ROOT/27.0.0-RC.1/data                                   zfs   225G  384K  225G   1% /data
boot-pool/ROOT/27.0.0-RC.1/etc                                    zfs   225G  6.8M  225G   1% /etc
boot-pool/ROOT/27.0.0-RC.1/home                                   zfs   225G  128K  225G   1% /home
boot-pool/ROOT/27.0.0-RC.1/mnt                                    zfs   225G  128K  225G   1% /mnt
boot-pool/ROOT/27.0.0-RC.1/opt                                    zfs   225G  4.9M  225G   1% /opt
boot-pool/ROOT/27.0.0-RC.1/root                                   zfs   225G  128K  225G   1% /root
boot-pool/ROOT/27.0.0-RC.1/usr                                    zfs   229G  3.8G  225G   2% /usr
boot-pool/ROOT/27.0.0-RC.1/var                                    zfs   225G  5.0M  225G   1% /var
boot-pool/ROOT/27.0.0-RC.1/var/ca-certificates                    zfs   225G  128K  225G   1% /var/local/ca-certificates
boot-pool/ROOT/27.0.0-RC.1/var/lib                                zfs   225G   30M  225G   1% /var/lib
boot-pool/ROOT/27.0.0-RC.1/var/log                                zfs   225G  2.8M  225G   1% /var/log
```

### Pools ZFS

```text
NAME               SIZE  ALLOC   FREE  CKPOINT  EXPANDSZ   FRAG    CAP  DEDUP    HEALTH  ALTROOT
Copias_seguridad  1.81T  21.0M  1.81T        -         -     0%     0%  1.00x    ONLINE  /mnt
boot-pool          236G  3.95G   232G        -         -     0%     1%  1.00x    ONLINE  -
all pools are healthy
```

## Red

| Interfaz | Estado  | Dirección IP |
| --------- | ------- | ------------ |
| lo        | UNKNOWN | 127.0.0.1/8, ::1/128 |
| enp1s0    | UP      | 192.168.40.200/24, fe80::7285:c2ff:fe91:2767/64 |

- **Velocidad de enlace:** 1000 Mbps.

## Muestra en reposo (10 segundos)

- **CPU libre media:** 97%.
- **Espera de E/S:** 0.0%.
- **Procesos en cola:** 0.1.
- **Swap in/out:** 0/0.

## Tabla de línea base

> Copiar a `docs/02-inventari.md`.

| Recurso | Valor base |
| ------- | ---------- |
| CPU libre / carga | 97% libre / carga 0.13 |
| RAM disponible (sin/con ARC) | 14172 MB / 14472 MB de 15670 MB |
| Swap usado | 0 MB de 0 MB |
| Disco: % ocupación (`/`) | 1% |
| Disco: espera E/S | 0.0% |
| Red: velocidad de enlace | 1000 Mbps |

## Valoración

- [x] **OK - CPU:** 4 núcleos.
- [x] **OK - RAM:** ~14472 MB aprovechables de 15670 MB.
- [x] **OK - DISCO:** partición raíz al 1%.
- [x] **OK - RED:** enlace a 1000 Mbps.

## Resumen

Sin avisos ni cuellos de botella con los umbrales del script.
