mkdir certs crl newcerts private
chmod 700 private
touch index.txt
echo 1000 > serial
sed -i '' "s|^dir.*=.*|dir = ${PWD}|" openssl.cnf
