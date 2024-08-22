sudo chmod +x /usr/local/bin/saludo.sh --Permisos de ejecucion para el archivo

--archivo de servicio systemd
/*
[Unit]
Description=Servicio de saludo que imprime la fecha y hora

[Service]
ExecStart=/usr/local/bin/saludo.sh
Restart=always

[Install]
WantedBy=multi-user.target
*/

--Habilitacion e inicio del servicio

sudo systemctl enable saludo.service
sudo systemctl start saludo.service
sudo systemctl status saludo.service
sudo journalctl -u saludo.service

--Desinstalacion del servicio

sudo systemctl status saludo.service
sudo journalctl -u saludo.service
