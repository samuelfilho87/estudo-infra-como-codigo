#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /admin
mkdir /sales
mkdir /sec

echo "Directories created."

echo "Creating user group..."

groupadd GRP_ADMIN
groupadd GRP_SALES
groupadd GRP_SEC

echo "User group created"

echo "Creating users..."

useradd samuel -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_ADMIN
useradd marina -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_ADMIN
useradd gabriel -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_ADMIN

useradd isabella -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_SALES
useradd mariza -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_SALES
useradd francisco -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_SALES

useradd isaque -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_SEC
useradd elizama -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_SEC
useradd taisa -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_SEC

echo "Users created"

echo "Specifying directories permissions..."

chown root:GRP_ADMIN /admin
chown root:GRP_SALES /sales
chown root:GRP_SEC /sec

chmod 770 /admin
chmod 770 /sales
chmod 770 /sec
chmod 777 /public

echo "Specifications of directory permissions finalized"

echo "Done."
