#!/bin/bash

read -p "¿Deseas actualizar tu sistema? (y/n): " comando

if [ "$comando" = "y" ]; then
    echo "Iniciando actualización del sistema..."
    sudo apt update
    sudo apt upgrade -y
    sudo apt autoremove -y
    sudo apt autoclean -y
    echo "✅ Actualización completada con éxito."
elif [ "$comando" = "n" ]; then
    echo "❌ Actualización cancelada por el usuario."
    exit 0
else
    echo "⚠️ Opción no válida. Usa 'y' o 'n'."
    exit 1
fi
