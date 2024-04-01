 /bin/bash

read -p "Actualiza tu sistema, y/n?: " comando

if [ "$comando" = "y" ]; then
      apt update
      apt upgrade -y
      apt autoremove -y
      echo "Actualizacion completada"

elif [ "$comando" = "n" ]; then
     echo "Actualizacion abortada"
     exit

fi
