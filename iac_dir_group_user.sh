#!/bin/bash

echo "Criando diretórios."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários do sistema, direcionando para seus devidos grupos, solicitando troca de senha."

useradd maria -c "Maria Lima" -s /bin/bash -m -p $(openssl passwd -crypt ADM123) -G GRP_ADM
passwd maria -e

useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd -crypt ADM123) -G GRP_ADM
passwd sebastiana -e

useradd josefina -c "Josefina Carla" -s /bin/bash -m -p $(openssl passwd -crypt ADM123) -G GRP_ADM
passwd josefina -e

useradd debora -c "Debora Rabelo" -s /bin/bash -m -p $(openssl passwd -crypt VEN123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Carla" -s /bin/bash -m -p $(openssl passwd -crypt VEN123) -G GRP_VEN
passwd sebastiana -e

useradd joao -c "Joao Plinio" -s /bin/bash -m -p $(openssl passwd -crypt VEN123) -G GRP_VEN
passwd joao -e

useradd roberto -c "Roberto Costa" -s /bin/bash -m -p $(openssl passwd -crypt SEC123) -G GRP_SEC
passwd roberto -e

useradd amanda -c "Amanda Lucia" -s /bin/bash -m -p $(openssl passwd -crypt SEC123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Berao" -s /bin/bash -m -p $(openssl passwd -crypt SEC123) -G GRP_SEC
passwd rogerio -e

echo "Especificando permissões dos diretórios."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Sistema IAC Finalizado."
