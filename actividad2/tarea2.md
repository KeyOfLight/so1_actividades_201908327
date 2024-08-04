--Creacion de usuario

sudo useradd usuario1
sudo useradd usuario2
sudo useradd usuario3

--Asignacion de contraseña

sudo passwd usuario1
usuario1
sudo passwd usuario2
usuario2
sudo passwd usuario3
usuario3

Informacion del usuario 1
id usuario1

Eliminar el usuario 3
sudo userdel -r --remove-home usuario3


---- PARTE 2

-- Creacion de grupos

sudo groupadd grupo1
sudo groupadd grupo2

-- Agregar usuarios a grupos

sudo usermod -aG grupo1 usuario1
sudo usermod -aG grupo2 usuario2

-- Verificar Membresias

groups usuario1
groups usuario2

-- Eliminar grupo 1

sudo groupdel grupo2

---- PARTE 3

-- Creación de Archivos y Directorios

sudo su - usuario1
echo "Contenido del archivo1" > ~/archivo1.txt
mkdir ~/directorio1
echo "Contenido del archivo2" > ~/directorio1/archivo2.txt

-- Verificar Permisos

ls -l ~/archivo1.txt
ls -ld ~/directorio1

-- Modificar Permisos

chmod 640 ~/archivo1.txt


-- Modificar Permisos

chmod u+x ~/directorio1/archivo2.txt

-- Cambiar el grupo propietario

sudo chgrp grupo1 ~/directorio1/archivo2.txt

-- Configurar permisos de directorio

chmod 740 ~/directorio1

-- Verificacion final

ls -l ~usuario1/archivo1.txt
ls -ld ~usuario1/directorio1
