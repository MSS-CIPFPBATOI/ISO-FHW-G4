#!/bin/bash

# Script para ejecutar el servidor de comunicaciones G4

echo "Terminal de comunicaciones G4"
echo "Bienvenido ${USER}"
sleep 1

while true; do
    echo ""
    echo "Menu de opciones:"
    echo "1. Iniciar servicio VNC"
    echo "2. Detener servicio VNC"
    echo "3. Abrir Servicio de Virtualización"
    echo "4. Abrir Servicio Local de Monitorización"
    echo "5. Mostrar estado de servicios"
    echo "6. Mostrar Redes y Puertos (ip a)"
    echo "7. Salir"

    read -p "Seleccione una opción (1-7): " opcion

    case $opcion in
        1)
            echo "Iniciando servicio VNC en segundo plano..."
            nohup vncserver :1 > /dev/null 2>&1 &
            disown
            echo "Servicio VNC iniciado (persistente)."
            ;;
        2)
            echo "Deteniendo servicio VNC..."
            vncserver -kill :1
            echo "Servicio VNC detenido."
            ;;
        3)
            echo "Abriendo Servicio de Virtualización..."
            VirtualBox
            disown
            echo "Servicio de Virtualización abierto."
            ;;
        4)
            echo "Abriendo Servicio Local de Monitorización..."
            btop
            ;;
        5)
            echo "Mostrando estado de servicios..."
            systemctl status vncserver virtualbox btop 2>/dev/null || echo "Algunos servicios no usan systemctl."
            ;;
        6)
            echo "Mostrando Redes e Interfaces (ip a)..."
            ip a
            ;;
        7)
            echo "Saliendo del script. ¡Hasta luego!"
            # Permite salir del script de forma segura tanto si se ejecuta con ./ como con source
            return 0 2>/dev/null || exit 0
            ;;
        *)
            echo "Opción inválida. Por favor seleccione una opción válida (1-7)."
            ;;
    esac
done