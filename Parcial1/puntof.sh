#!bin/bash


echo "Mi IP publica es: $(curl -s ifconfig.me)" > Filtro_Avanzado.txt

echo "Mi usuarios es: $(grep vagrant /etc/passwd | awk -F: '{print $1}')" >> Filtro_Avanzado.txt

echo "El hash de mi usuario es: $(sudo grep vagrant /etc/shadow | awk -F: '{print $2}')" >> Filtro_Avanzado.txt







