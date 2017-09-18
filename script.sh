#Atualizacao do sistema
yum update -y

#Adicionando repositorio
cat <<EOF > /etc/yum.repos.d/mongodb-org.repo
[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc
EOF

#Atualizando lista de repositorios
yum repolist

#Instalando o MongoDB
yum install mongodb-org -y

#Adicionando o MongoDB na inicializacao do sistema
systemctl start mongod

#Desativando o THP
echo 'never' > /sys/kernel/mm/transparent_hugepage/enabled
echo 'never' > /sys/kernel/mm/transparent_hugepage/defrag

#Habilitando o controle de acesso
echo "security.authorization : enabled" >> /etc/mongod.conf

#Reinicializando o MongoDB
sudo service mongod restart

clear

echo "INSTALACAO FINALIZADA"