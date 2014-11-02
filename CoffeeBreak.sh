#!/bin/sh

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with This program. If not, see <http: //www.gnu.org/licenses/>.

#Creado por @srkdos 
#Repositorio www.github.com/srkdos
#Ayudame a mejorarlo, manten su mismo nombre e incluyete como colaborador, para que juntos logremos herramientas sencillas para 
#faciliar la optmizacion de muchos sistemas Gnu/Linux.

 zenity --info --text "Bienvenidos al asistente de optimizacion para Ubuntu. SRKDOS"
 zenity --info --text "En ciertos puntos el sistema preguntara si desea proceder, tendra que aceptarlos"

# Actualizamos lista de repositorios
echo "-----------------------------------------" 
echo "| Actualizando la lista de repositorios |"
echo "| del gestor de paquetes de Ubuntu      |" 
echo "| Puede tardar un par de minutos..      |" 
echo "-----------------------------------------"
sudo apt-get update


#actualizando el sistema
echo "-----------------------------------------"
echo "|      Actualizando el sistema         | "
echo "|   Esto puede tardar mucho o poco     | "
echo "|Depende de la velocidad de tu conexion| "
echo "---------------------------------------- "
sudo apt-get upgrade && sudo apt-get dist-upgrade

#Actualizar y agregar controladores para hardware nuevo, después de actualización.
echo "-------------------------------------------"
echo "|Repositorio de controladores libres para  |"
echo "|tarjetas gráficas de Intel, Ati y Nvidia  |"
echo "|En este punto, debe presionar enter para  |"
echo "|proceder en la actualizacion, este atento |"
echo "-------------------------------------------"
sudo add-apt-repository ppa:xorg-edgers/ppa
sudo apt-get update && sudo apt-get upgrade

#Extras y CODECS CON LICENCIAS RESTRINGIDAS	
echo "------------------------------- -"
echo "|Extras restringidos de Ubuntu. |"
echo "| Esto puede tardar un poco..   |"
echo "---------------------------------"
sudo apt-get install ubuntu-restricted-extras && sudo apt-get install libavcodec-extra

#Gstreamer - Codecs multimedia. Soporte para Audio y vídeo en diferentes formatos. Está dentro del metapaquete "ubuntu-restricted-extras" y no hace falta instalarlo. Si alguna vez los necesitáis
echo "---------------------------------------"
echo "| Gstreamer, soporte de audio y video.|"
echo "---------------------------------------"
sudo apt-get install gstreamer0.10-plugins-bad  gstreamer0.10-plugins-bad-multiverse gstreamer0.10-plugins-ugly

echo "-----------------------------------------"
echo "|Verficando cache, y actualizando cache.|"
echo "-----------------------------------------"
sudo fc-cache

echo "----------------------------------------------------"
echo "|Si luego de todo, ha ido todo bien, en hora buena.|"
echo "| todo ha concluido con exito.                     |"
echo "----------------------------------------------------"
