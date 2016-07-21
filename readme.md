# build container
docker build -t {IMAGE NAME} .

# run container
docker run -t --name {CONTAINER NAME} -d -p 443:443 -v "$PWD/html":/var/www/html {IMAGE NAME}

# do check
docker exec {CONTAINER NAME} check.sh {CIPHERS}
