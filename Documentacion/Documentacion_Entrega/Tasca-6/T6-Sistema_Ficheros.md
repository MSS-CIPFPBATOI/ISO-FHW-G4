# Sistemas de ficheros de la infraestructura

## Clientes

### Windows

**Sistema de ficheros: NTFS**

Es el sistema de ficheros nativo de Windows. El volumen del sistema
tiene que utilizar NTFS.

### Debian

**Sistema de ficheros: EXT4**

Es el sistema de ficheros predeterminado de Debian. El instalador lo
propone para la partición raíz. Es estable y está muy probado.

## TrueNAS

**Sistema de ficheros: ZFS**

TrueNAS está pensado para el almacenamiento. ZFS integra en un mismo
sistema el sistema de ficheros y la gestión de los discos, incluyendo
funciones como los pools y el RAID integrado.

## MikroTik

**Sistema de ficheros: EXT4**

Es el sistema de ficheros que MikroTik presenta como opción
predeterminada para la mayoría de los casos. Ofrece soporte para varias
particiones, journaling y un buen rendimiento.

## OPNsense

**Sistema de ficheros: ZFS**

OPNsense ofrece ZFS como opción durante la instalación. Es más robusto
que UFS en determinados aspectos: ayuda a mantener la coherencia de los
datos tras un corte de luz, ya que utiliza un sistema de escritura
basado en bloques nuevos en lugar de sobrescribir directamente los datos
existentes.

## Windows Server

**Sistema de ficheros: NTFS**

Es el sistema de ficheros nativo de Windows y el requerido para instalar
el sistema operativo.

## Debian Server

**Sistema de ficheros: EXT4**

Es el sistema que propone por defecto el instalador de Debian. Es
estable, está muy probado y ofrece un buen rendimiento. Además,
incorpora journaling para facilitar la recuperación tras un apagado
inesperado y cuenta con permisos POSIX integrados.

## Servidor de comunicaciones

### Debian

**Sistema de ficheros: EXT4**

Es el sistema que propone por defecto el instalador de Debian. En un
servidor que debe estar siempre disponible, resulta adecuado por su
fiabilidad y por su capacidad para recuperarse después de un apagado
brusco.
