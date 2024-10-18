#!/bin/bash
creamos los usuarios

sudo useradd -m -s /bin/bash -p "" programadores
sudo useradd -m -s /bin/bash -p "" tester
sudo useradd -m -s /bin/bash -p "" tester
sudo useradd -m -s /bin/bash -p "" analista
sudo useradd -m -s /bin/bash -p "" disenadores


creamos los grupos

sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

agregamos el usuario al los grupos

sudo usermod -aG grupoprogramadores programadores
sudo usermod -aG grupotester tester
sudo usermod -aG grupoanalistas analista
sudo usermod -aG grupodisenadores disenadores


cambiamos el usuario y grupo a las carpetas alumnos

sudo chown programadores:grupoprogramadores alumno_1
sudo chown tester:grupotester alumno_2
sudo chown analista:grupoanalistas alumno_3
sudo chown disenadores:grupodisenadores profesor


agregamos persmisos

sudo chmod 750 alumno_1
sudo chmod 760 alumno_2
sudo chmod 700 alumno_3
sudo chmod 775 profesor




