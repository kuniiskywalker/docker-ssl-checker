
# build container
docker build -t kuniiskyawlker/https .

# run container
docker run --name httpd -d -p 443:443 -v "$PWD/html":/var/www/html kuniiskywalker/https

# restart container
docker restart kuniiskyawalker/https

# check
./cipherscan/ciphercscan $(docker-machine ip default) > logs/aaa.log
