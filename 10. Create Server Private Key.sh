echo "Server Certificate Name (FQDN):"

read server

openssl genrsa -out intermediate/private/$server.key.pem 2048
chmod 400 intermediate/private/$server.key.pem
