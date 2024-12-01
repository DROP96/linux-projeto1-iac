#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

# Criando usuários e atribuindo aos grupos
useradd Carlos -m -s /bin/bash -G GRP_ADM
useradd Maria -m -s /bin/bash -G GRP_ADM
useradd João -m -s /bin/bash -G GRP_ADM

useradd Debora -m -s /bin/bash -G GRP_VEN
useradd Sebastiana -m -s /bin/bash -G GRP_VEN
useradd Roberto -m -s /bin/bash -G GRP_VEN

useradd Josefina -m -s /bin/bash -G GRP_SEC
useradd Amanda  -m -s /bin/bash -G GRP_SEC
useradd Rogerio -m -s /bin/bash -G GRP_SEC

echo "Definindo senhas dos usuários..."

# Definindo senhas usando chpasswd
echo "Carlos:senha123" | chpasswd
echo "Maria:senha123" | chpasswd
echo "João:senha123" | chpasswd

echo "Debora:senha123" | chpasswd
echo "Sebastiana:senha123" | chpasswd
echo "Roberto:senha123" | chpasswd

echo "Josefina:senha123" | chpasswd
echo "Amanda:senha123" | chpasswd
echo "Rogerio:senha123" | chpasswd

echo "Especificando permissões dos diretórios..."

# Definindo a propriedade dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# Definindo permissões dos diretórios
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
