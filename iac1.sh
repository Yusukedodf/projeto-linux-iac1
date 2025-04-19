#!/bin/bash

#criando diretórios 
    echo "criando diretórios"
mkdir /publico
mkdir /adm 
mkdir /ven 
mkdir /sec
    echo "diretórios criado com sucesso!!!"

#criando grupos
    echo "criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
    echo "grupos criados com sucesso!!!"

#adicionando usuários e os colocando em grupos  
    echo "criando usuários"
useradd carlos -m -c "carlos santos" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM 
useradd maria -m -c "maria santos" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -m -c "joão santos" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -m -c "debora cardoso" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN 
useradd sebastiana -m -c "sebastiana cardoso" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -c "roberto cardoso" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN 

useradd josefina -m -c "josefina barbosa" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -c "amanda barbosa" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -c "rogerio barbosa" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
    echo "usuários criados e adicionados aos grupos com sucesso!!!"

#permissões de usuários a pastas 
    echo "dando permissões aos diretórios"
chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven 
chown root:GRP_SEC /sec 

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
    echo "<<<<FIM>>>>>"