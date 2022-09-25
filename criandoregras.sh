#!/bin/bash

echo "criando diretórios . . ."
mkdir /Publico

echo " Diretório Pblico Criado"

mkdir /ADM

echo " Diretório ADM criado "

mkdir /VEN

echo " Diretório VEN criado"

mkdir /SEC

echo "Diretório SEC criado"

echo " Criação de Diretórios finalizado!"

echo " Criando grupos . . . "

groupadd GRP_ADM

echo " Grupo ADM criado "

groupadd GRP_VEN

echo " Grupo VEN criado"

groupadd GRP_SEC

echo " grupo SEC criado"

echo " criação de grupos finalizado ! "

echo " criando Usuários . . .  "

useradd Carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd Maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd João -c "João" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd Debora -c "Debora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd Sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd Roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd Josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd Amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd Rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo " Usuarios Criados ! "

echo " Definindo Funções nas Pastas "

chown root:root /Publico
chown root:GRP_ADM /ADM
chown root:GRP_VEN /VEN
chown root:GRP_SEC /SEC

chmod 777 /Publico
chmod 770 /ADM
chmod 770 /VEN
chmod 770 /SEC

echo " scrpit finalizado ! "