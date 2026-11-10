# Línea base - SVRCOMM40-G4

**Fecha de captura:** 2026-11-10 09:31:16
**Sistema:** Debian GNU/Linux 13 (trixie)
**Kernel:** 6.12.116+deb13-amd64
**Carga:** 0.11, 0.10, 0.04 (1, 5 y 15 minutos)

## CPU

- **Modelo:** Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz
- **Núcleos lógicos:** 1

## RAM

```text
               total        used        free      shared  buff/cache   available
Mem:           967Mi       211Mi       786Mi       576Ki        79Mi       756Mi
Swap:          975Mi          0B       975Mi
```

- **Cache ZFS (ARC) actual:** 0 MB (se libera si hace falta memoria).
- **RAM disponible incluyendo ARC (aprox.):** 756 MB.

## Discos

```text
NAME  SIZE TYPE ROTA MODEL
sda    40G disk    1 VBOX HARDDISK
sr0  1024M rom     0 VBOX CD-ROM
```

> ROTA=1 suele indicar disco mecánico; en máquinas virtuales no es fiable.

### Sistemas de archivos

```text
Filesystem     Type  Size  Used Avail Use% Mounted on
/dev/sda1      ext4  6.2G  1.1G  4.9G  18% /
/dev/sda5      ext4  2.5G  424M  1.9G  19% /var
/dev/sda7      ext4   30G  2.1M   28G   1% /srv
```

### Pools ZFS

```text
(sin permisos o sin pools: no se muestra)
```

## Red

| Interfaz | Estado  | Dirección IP         |
| -------- | ------- | -------------------- |
| lo       | UNKNOWN | 127.0.0.1/8, ::1/128 |
| enp0s3   | UP      | 172.16.222.177/24    |
| enp0s8   | UP      | 192.168.40.2/24      |

- **Velocidad de enlace:** 1000 Mbps.

## Muestra en reposo (10 segundos)

- **CPU libre media:** 97%.
- **Espera de E/S:** 3.0%.
- **Procesos en cola:** 0.0.
- **Swap in/out:** 0/0.

## Tabla de línea base

> Copiar a `docs/02-inventari.md`.

| Recurso                      | Valor base                |
| ---------------------------- | ------------------------- |
| CPU libre / carga            | 97% libre / carga 0.09    |
| RAM disponible (sin/con ARC) | 756 MB / 756 MB de 967 MB |
| Swap usado                   | 0 MB de 975 MB            |
| Disco: % ocupación (`/`)     | 18%                       |
| Disco: espera E/S            | 3.0%                      |
| Red: velocidad de enlace     | 1000 Mbps                 |

## Valoración

- [ ] **AVISO - CPU:** solo 1 núcleo; poco para un servidor con servicios.
- [ ] **AVISO - RAM:** solo \~756 MB aprovechables (ZFS rinde mejor con más RAM).
- [x] **OK - DISCO:** partición raíz al 18%.
- [x] **OK - RED:** enlace a 1000 Mbps.

## Resumen

**A vigilar:** CPU y RAM.

