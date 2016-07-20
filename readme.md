# build container
docker build -t https-container .

# run container
docker run --name httpd -d -p 443:443 -v "$PWD/html":/var/www/html https-container

# check
./cipherscan/ciphercscan $(docker-machine ip default) > logs/aaa.log
