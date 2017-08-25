set -ex
mkdir -p intermediate
cd intermediate
mkdir certs crl newcerts private csr
chmod 700 private
touch index.txt
echo 1000 > serial
echo 1000 > crlnumber
cp ../openssl.cnf .

sed -i '' "s|^dir.*=.*|dir = ${PWD}|" openssl.cnf
