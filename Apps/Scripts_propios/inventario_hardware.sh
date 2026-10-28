#!/usr/bin/env bash
# ==============================================================================
# inventario_hardware.sh
# Recopila informacion de todos los componentes del PC (Linux Mint / Ubuntu /
# Debian) y la guarda en archivos .txt organizados por carpeta de componente.
#
# Nombre de cada archivo:  <comando>[-<parametros>].txt
#   ej.:  lscpu.txt   lscpu-e.txt   dmidecode-t_memory.txt   lspci-nnk.txt
#
# Uso:
#   chmod +x inventario_hardware.sh
#   ./inventario_hardware.sh                # genera el inventario
#   ./inventario_hardware.sh --instalar     # instala antes las herramientas que falten
#   ./inventario_hardware.sh -o /ruta/dest  # carpeta de salida personalizada
# ==============================================================================

INSTALAR=0
DESTINO=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        -i|--instalar) INSTALAR=1 ;;
        -o|--salida)   DESTINO="${2:-}"; shift ;;
        -h|--help)
            sed -n '2,15p' "$0" | sed 's/^# \{0,1\}//'
            exit 0 ;;
        *) echo "Opcion desconocida: $1"; exit 1 ;;
    esac
    shift
done

# --- Se necesita root para dmidecode, smartctl, lshw, etc. --------------------
if [[ $EUID -ne 0 ]]; then
    echo ">> Se necesitan permisos de administrador. Reejecutando con sudo..."
    ARGS=()
    [[ $INSTALAR -eq 1 ]] && ARGS+=(--instalar)
    [[ -n "$DESTINO" ]] && ARGS+=(-o "$DESTINO")
    exec sudo bash "$0" "${ARGS[@]}"
fi

REAL_USER="${SUDO_USER:-$USER}"
REAL_HOME="$(getent passwd "$REAL_USER" | cut -d: -f6)"
REAL_UID="$(id -u "$REAL_USER")"
FECHA="$(date +%Y%m%d_%H%M%S)"
OUT="${DESTINO:-$REAL_HOME/inventario_hardware_$(hostname)_$FECHA}"

mkdir -p "$OUT" || { echo "No se pudo crear $OUT"; exit 1; }
LOG="$OUT/_log.txt"
: > "$LOG"

# --- Instalacion opcional de herramientas -------------------------------------
if [[ $INSTALAR -eq 1 ]]; then
    echo ">> Instalando herramientas necesarias..."
    apt-get update -qq
    apt-get install -y \
        lshw hwinfo inxi smartmontools lm-sensors pciutils usbutils dmidecode \
        hdparm nvme-cli ethtool acpi upower mesa-utils x11-xserver-utils \
        alsa-utils wireless-tools iw rfkill vulkan-tools xinput bluez \
        >> "$LOG" 2>&1
fi

# --- Funciones auxiliares -----------------------------------------------------

# Construye el nombre de archivo: comando[-parametros].txt
nombre_archivo() {
    local cmd params
    cmd="$(basename "$1")"
    shift
    params="$*"
    params="${params// /_}"                       # espacios -> _
    params="${params//[^A-Za-z0-9._-]/_}"         # caracteres raros -> _
    params="$(echo "$params" | sed -E 's/_+/_/g; s/^[-_]+//; s/[-_]+$//')"
    params="${params:0:90}"
    if [[ -n "$params" ]]; then
        echo "${cmd}-${params}.txt"
    else
        echo "${cmd}.txt"
    fi
}

# run <Carpeta> <comando> [args...]
# Ejecuta el comando como root y guarda la salida.
# Si USERMODE=1 lo ejecuta como el usuario real (necesario para X11/audio).
run() {
    local carpeta="$1"; shift
    local cmd="$1"

    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "[NO INSTALADO] $cmd  (carpeta: $carpeta)" >> "$LOG"
        return 1
    fi

    mkdir -p "$OUT/$carpeta"
    local archivo="$OUT/$carpeta/$(nombre_archivo "$@")"

    {
        echo "# Comando : $*"
        echo "# Fecha   : $(date '+%Y-%m-%d %H:%M:%S')"
        echo "# Equipo  : $(hostname)"
        echo "# ------------------------------------------------------------"
        echo
        if [[ "${USERMODE:-0}" == "1" && "$REAL_USER" != "root" ]]; then
            sudo -u "$REAL_USER" env \
                DISPLAY="${DISPLAY:-:0}" \
                XAUTHORITY="${XAUTHORITY:-$REAL_HOME/.Xauthority}" \
                XDG_RUNTIME_DIR="/run/user/$REAL_UID" \
                DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$REAL_UID/bus" \
                "$@" 2>&1
        else
            "$@" 2>&1
        fi
    } > "$archivo"

    echo "[OK] $carpeta/$(basename "$archivo")"
}

# Igual que run pero como usuario normal (X11, pulseaudio, etc.)
run_u() { USERMODE=1 run "$@"; }

echo "=============================================================="
echo " Inventario de hardware - $(hostname)"
echo " Salida: $OUT"
echo "=============================================================="

# ==============================================================================
# 00 - SISTEMA GENERAL
# ==============================================================================
C="00_Resumen_General"
run "$C" lshw
run "$C" lshw -short
run "$C" lshw -businfo
run "$C" inxi -Fxxxz
run "$C" hwinfo --short
run "$C" dmidecode

# ==============================================================================
# 01 - SISTEMA OPERATIVO / KERNEL
# ==============================================================================
C="01_Sistema_Operativo"
run "$C" uname -a
run "$C" lsb_release -a
run "$C" cat /etc/os-release
run "$C" hostnamectl
run "$C" uptime
run "$C" lsmod
run "$C" cat /proc/version
run "$C" cat /proc/cmdline
run "$C" systemd-detect-virt

# ==============================================================================
# 02 - CPU
# ==============================================================================
C="02_CPU"
run "$C" lscpu
run "$C" lscpu -e
run "$C" lscpu -C
run "$C" cat /proc/cpuinfo
run "$C" lshw -class processor
run "$C" dmidecode -t processor
run "$C" dmidecode -t cache

# ==============================================================================
# 03 - PLACA BASE, BIOS Y CHASIS
# ==============================================================================
C="03_Placa_Base_BIOS"
run "$C" dmidecode -t baseboard
run "$C" dmidecode -t bios
run "$C" dmidecode -t system
run "$C" dmidecode -t chassis
run "$C" lshw -class bus

# ==============================================================================
# 04 - MEMORIA RAM
# ==============================================================================
C="04_Memoria_RAM"
run "$C" free -h
run "$C" free -m
run "$C" cat /proc/meminfo
run "$C" dmidecode -t memory
run "$C" lshw -class memory
run "$C" swapon --show
run "$C" vmstat -s

# ==============================================================================
# 05 - ALMACENAMIENTO
# ==============================================================================
C="05_Almacenamiento"
run "$C" lsblk
run "$C" lsblk -f
run "$C" lsblk -a
run "$C" lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINT,MODEL,SERIAL,ROTA
run "$C" df -hT
run "$C" blkid
run "$C" fdisk -l
run "$C" findmnt
run "$C" cat /proc/partitions
run "$C" lshw -class disk
run "$C" lshw -class storage
run "$C" smartctl --scan
run "$C" nvme list

# Detalle por cada disco fisico
mapfile -t DISCOS < <(lsblk -dno NAME,TYPE 2>/dev/null | awk '$2=="disk"{print $1}')
for d in "${DISCOS[@]}"; do
    run "$C" smartctl -a "/dev/$d"
    if [[ "$d" == nvme* ]]; then
        run "$C" nvme smart-log "/dev/$d"
        run "$C" nvme id-ctrl "/dev/$d"
    else
        run "$C" hdparm -I "/dev/$d"
    fi
done

# ==============================================================================
# 06 - GPU / TARJETA GRAFICA
# ==============================================================================
C="06_GPU"
run "$C" lspci -nnk -d ::0300
run "$C" lspci -nnk -d ::0302
run "$C" lspci -nnk -d ::0380
run "$C" lshw -class display
run "$C" nvidia-smi
run "$C" nvidia-smi -q
run_u "$C" glxinfo -B
run_u "$C" vulkaninfo --summary
run "$C" ls /dev/dri
run "$C" cat /proc/driver/nvidia/version

# ==============================================================================
# 07 - PANTALLAS / MONITORES
# ==============================================================================
C="07_Pantallas"
run_u "$C" xrandr
run_u "$C" xrandr --verbose
run_u "$C" xrandr --listmonitors
run_u "$C" xdpyinfo

# ==============================================================================
# 08 - RED (Ethernet / Wi-Fi / Bluetooth)
# ==============================================================================
C="08_Red"
run "$C" ip -br addr
run "$C" ip addr
run "$C" ip link
run "$C" ip route
run "$C" ip -s link
run "$C" lshw -class network
run "$C" nmcli device
run "$C" nmcli device show
run "$C" iwconfig
run "$C" iw dev
run "$C" iw list
run "$C" rfkill list
run "$C" cat /proc/net/dev
for i in /sys/class/net/*; do
    iface="$(basename "$i")"
    [[ "$iface" == "lo" ]] && continue
    run "$C" ethtool "$iface"
    run "$C" ethtool -i "$iface"
done

C="08b_Bluetooth"
run "$C" bluetoothctl list
run "$C" bluetoothctl devices
run "$C" bluetoothctl show
run "$C" hciconfig -a

# ==============================================================================
# 09 - AUDIO
# ==============================================================================
C="09_Audio"
run "$C" aplay -l
run "$C" aplay -L
run "$C" arecord -l
run "$C" cat /proc/asound/cards
run "$C" cat /proc/asound/devices
run "$C" lshw -class multimedia
run_u "$C" pactl info
run_u "$C" pactl list short sinks
run_u "$C" pactl list short sources
run_u "$C" pactl list cards

# ==============================================================================
# 10 - BUS PCI
# ==============================================================================
C="10_PCI"
run "$C" lspci
run "$C" lspci -nn
run "$C" lspci -nnk
run "$C" lspci -vv
run "$C" lspci -t
run "$C" lspci -tv

# ==============================================================================
# 11 - USB
# ==============================================================================
C="11_USB"
run "$C" lsusb
run "$C" lsusb -t
run "$C" lsusb -v
run "$C" usb-devices

# ==============================================================================
# 12 - PERIFERICOS DE ENTRADA (teclado, raton, touchpad, webcam)
# ==============================================================================
C="12_Perifericos"
run "$C" cat /proc/bus/input/devices
run_u "$C" xinput list
run_u "$C" xinput list --long
run "$C" ls /dev/video*
run "$C" v4l2-ctl --list-devices

# ==============================================================================
# 13 - BATERIA Y ENERGIA
# ==============================================================================
C="13_Bateria_Energia"
run "$C" upower -e
run "$C" upower -d
run "$C" acpi -V
run "$C" cat /sys/class/power_supply/BAT0/uevent
run "$C" cat /sys/class/power_supply/AC/uevent
run "$C" cat /sys/class/power_supply/ADP1/uevent

# ==============================================================================
# 14 - SENSORES / TEMPERATURAS
# ==============================================================================
C="14_Sensores"
run "$C" sensors
run "$C" sensors -u
run "$C" cat /sys/class/thermal/thermal_zone0/temp

# ==============================================================================
# 15 - CONTROLADORES / MODULOS DE KERNEL (drivers)
# ==============================================================================
C="15_Drivers"
run "$C" lsmod
run "$C" lsinitramfs /boot/initrd.img-"$(uname -r)"
run "$C" ubuntu-drivers devices
run "$C" cat /proc/devices
run "$C" cat /proc/interrupts
run "$C" cat /proc/ioports
run "$C" cat /proc/iomem
run "$C" dmesg

# ==============================================================================
# Cierre
# ==============================================================================
# Se entregan los archivos al usuario real (no a root)
chown -R "$REAL_USER":"$(id -gn "$REAL_USER")" "$OUT" 2>/dev/null

# Eliminar carpetas vacias y archivos de 0 bytes de datos utiles
find "$OUT" -type d -empty -delete 2>/dev/null

TOTAL_ARCH=$(find "$OUT" -type f -name '*.txt' ! -name '_log.txt' | wc -l)
TOTAL_DIRS=$(find "$OUT" -mindepth 1 -type d | wc -l)

echo
echo "=============================================================="
echo " Listo: $TOTAL_ARCH archivos en $TOTAL_DIRS carpetas"
echo " Ubicacion: $OUT"
if grep -q "NO INSTALADO" "$LOG" 2>/dev/null; then
    echo
    echo " Herramientas que faltaban (ver $LOG):"
    grep "NO INSTALADO" "$LOG" | sed 's/^/   /'
    echo
    echo " Para instalarlas ejecuta:  $0 --instalar"
fi
echo "=============================================================="
