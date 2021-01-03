#1. Descarga e instala el archivo PGDG de postgresql.org:

$ sudo yum -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm

#2. Instala PostgreSQL versión 12:

$ sudo yum install -y postgresql12-server postgresql12-contrib

#En este paso, si te sale el siguiente error:

#All matches were filtered out by modular filtering for argument: postgresql12-server
#All matches were filtered out by modular filtering for argument: postgresql12-contrib
#Error: Unable to find a match: postgresql12-server postgresql12-contrib

#Puedes arreglarlo ejecutando esto para deshabilitar el módulo stream de postgresql en AppStream:

$ sudo dnf module disable postgresql

#3. Listo! Si todo salió bien hasta ahora, hemos instalado exitosamente PostgreSQL. Por lo que procedemos a inicializar la base de datos:

$ sudo /usr/pgsql-12/bin/postgresql-12-setup initdb

#4. Iniciamos los servicios:

$ sudo systemctl start postgresql-12
$ sudo systemctl enable postgresql-12

#5. Ahora puedes iniciar sesión en la instancia instalada impersonando el usuario administrador ‘postgres’ e ejecutando el programa psql:

$ sudo su – postgres
$ psql
