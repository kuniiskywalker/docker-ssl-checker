
# build container
docker build -t kuniiskyawlker/https .

# run container
docker run --name httpd -d -p 80:80 -v "$PWD/html":/var/www/html kuniiskywalker/https

# restart container
docker restart kuniiskyawalker/https
