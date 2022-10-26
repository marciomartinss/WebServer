#!/usr/bin/env bash

####==========================================================================================####

#	Author: Marcio Martins
#	Maintenance: Marcio Martins

#	Version: v1.0.0
#	Description: Este programa tem por finalidade criar ervidor web e fazer o Deploy de uma aplicacao. 

###===========================================================================================####

###===================================== Atualizar Servidor ==================================####

echo "Atualizando o Servidor..."

"$(apt-get update)"

###=============================== Instalar Servicos WEB e Unzip =============================####

echo "Instalando Apache..."

"$(apt-get install apache2 -y)"

#echo "Instalando Unzip..."
#"$(apt-get install unzip -y)"

###===================================== Clonandi Aplicacao ==================================####

echo "Clonando Aplicacao..."

"$(git clone https://github.com/denilsonbonatti/linux-site-dio.git)"

###==================================== Deploy da Aplicacao =================================####

echo "Publicando Aplicacao..."

"$(mv /root/scripts/linux-site-dio /var/www/html && chmod 775 /var/www/html/linux-site-dio && chown -R www-data:www-data /var/www/html/linux-site-dio)"

echo "Deploy efetuado com Sucesso!"
