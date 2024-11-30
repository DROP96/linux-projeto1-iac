#!/bin/bash

echo " criando usário do sistema...."

useradd guest10 -c "usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest10 -e

useradd guest11 -c "usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest11 -e

useradd guest12 -c "usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest12 -e

useradd guest13 -c "usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest13 -e

echo "Finalizado!!"
