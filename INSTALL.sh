#!/bin/bash

echo "Instalando Linphone na versão 4.4.1"

if [ -d "/home/$USER/application" ] 
then
    echo "Pasta já existe!" 
else
    echo "Criando pasta application"
    mkdir /home/$USER/application
  
fi
echo "Realizando o Download do arquivo do app Linphone na versão 4.4.1"
#wget https://www.linphone.org/releases/linux/app/Linphone-4.4.1.AppImage

echo "Dando permissão para execultar o App"
sudo chmod a+x Linphone-4.4.1.AppImage

echo "Movendo o app para a pasta application"
mv Linphone-4.4.1.AppImage /home/$USER/application

echo "Movendo o arquivo Linphone.desktop para a pasta application"
mv /home/$USER/linphone-instalation/Linphone.desktop /home/$USER/.local/share/applications/

echo "Movendo o arquivo icon.png para a pasta application"
mv /home/$USER/linphone-instalation/icon.png /home/$USER/.local/share/applications/

echo "Executado o update-desktop-database"
bash update-desktop-database /home/$USER/.local/share/applications/

echo "Fim da instalação"
