#!/bin/bash

cd ./build
FILES=$(find * -type f | awk -v q="'" '{print " -F " q "file=@\"" $0 "\";filename=\"" $0 "\"" q}')
curl "https://ipfs.infura.io:5001/api/v0/add?pin=true&recursive=true&wrap-with-directory=true&cid-version=1" -vv -X POST $FILES -u "2Ea7JWQFjCEKsUzWTc5eikpTTVd:c563cbc11c00b1d59c47572fffff4597"
cd ..

# ejemplo subir una frase a IPFS: curl "https://ipfs.infura.io:5001/api/v0/add?pin=true&cid-version=1" -X POST -H "Content-Type: multipart/form-data" -F file="Hola perros K" -u "PROJECT ID:API KEY SECRET"
#Hash IPFS: bafkreifd3mitpnqnw3a3pvsrq7jkssfgzlh5vzkgbdv72nnr7pmjfnyomi