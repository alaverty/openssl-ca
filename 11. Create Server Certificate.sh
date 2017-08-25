echo "Server Certificate Name (FQDN):"

read server

# Create the Server Certificate
openssl req -config intermediate/openssl.cnf -key intermediate/private/$server.key.pem -new -sha256 -out intermediate/csr/$server.csr.pem


# Sign The Server Certificate with the Intermediate CA
openssl ca -config intermediate/openssl.cnf \
      -extensions server_cert -days 375 -notext -md sha256 \
      -in intermediate/csr/$server.csr.pem \
      -out intermediate/certs/$server.cert.pem
chmod 444 intermediate/certs/$server.cert.pem
