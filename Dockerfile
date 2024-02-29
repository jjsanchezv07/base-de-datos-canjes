# Base image
FROM mariadb:10.6.5

# Add all scripts
     
COPY ./docker-scripts/ /docker-entrypoint-initdb.d/
# COPY ./Certificados/ /tmp DESCOMENTAR SI SE QUIERE COPIAR TODA LA CARPETA 

# COPY ./Certificados/server-cert.pem /tmp
# COPY ./50-server.cnf /etc/mysql/mariadb.conf.d
# COPY ./Certificados/server-key.pem /tmp
# COPY ./Certificados/ca.pem /tmp
