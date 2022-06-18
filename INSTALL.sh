#!/bin/bash

echo "Instalando Linphone na versão 4.4.1"

echo "Realizando o Download do arquivo do app Linphone na versão 4.4.1"
wget https://www.linphone.org/releases/linux/app/Linphone-4.4.1.AppImage

echo "Dando permissão para execultar o App"
sudo chmod a+x Linphone-4.4.1.AppImage

echo "Movendo o app para a pasta application"
sudo mv Linphone-4.4.1.AppImage /bin/

if [ -d "/home/$USER/.config/autostart/" ] 
then
    echo "Copiando o arquivo Linphone.desktop para a pasta .config/autostart para autoinicialização"
    cp /home/$USER/linphone-instalation/Linphone.desktop /home/$USER/.config/autostart/
else
    echo "Copiando o arquivo Linphone.desktop para a pasta .config/autostart para autoinicialização"
    mkdir /home/$USER/.config/autostart/
    cp /home/$USER/linphone-instalation/Linphone.desktop /home/$USER/.config/autostart/
  
fi

echo "Movendo o arquivo Linphone.desktop para a pasta application"
mv /home/$USER/linphone-instalation/Linphone.desktop /home/$USER/.local/share/applications/

echo "Movendo o arquivo icon.png para a pasta application"
sudo mv /home/$USER/linphone-instalation/icon.png /usr/share/icons/

echo "Executado o update-desktop-database"
update-desktop-database /home/$USER/.local/share/applications/

cd ..

rm -rf  linphone-instalation

/bin/Linphone-4.4.1.AppImage

echo "Fim da instalação"
