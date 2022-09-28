#! /bin/bash

#atualizando o servidor
echo "Utilizando os apt"
apt-get update
apt-get upgrade -y 

#instalando o apache
apt install apache2 -y

# instalando o unzip

apt install unzip -y

# indo para a pasta tmp

cd /tmp

# baixando o arquivo no git 

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Abrindo os arquivos
unzip main.zip

#enviando os arquivos para a pasta padrao do apache
cd linux-site-dio-main

cp -R * /var/www/html

echo "Finalizado Script" 

