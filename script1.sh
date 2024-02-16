#!/bin/bash

echo "Criando os Diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários do Grupo ADM"
useradd Carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Maria -c "Maria Costa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Joao -c "João da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo " Criando Usuários do Grupo VEN"
useradd Debora -c "Débora Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Sebastiao -c "Sebastião da Costa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Criando Usuários do Grupo SEC"
useradd Josefina -c "Josefina de Jesus" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Rogerio -c "Rogerio Senni" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Definindo Donos de Grupos"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo " Definindo Permissões de Usuários, Arquivos e Diretórios"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script Finalizado!"

