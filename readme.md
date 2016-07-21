# ready

## build container
docker build -t {IMAGE NAME} .

## run container
docker run -t --name {CONTAINER NAME} -d -p 443:443 -v "$PWD/html":/var/www/html {IMAGE NAME}

# check command

## check ciphers
docker exec {CONTAINER NAME} check.sh cipher {CIPHERS}

## check cprotocol
docker exec {CONTAINER NAME} check.sh protocol {PROTOCOL}


