# Simple and Faster Nginx Image


`docker run -d -v ${PWD}/static:/static -p 8080:80 --env NGINX_HOST=example.com --name static amisyura/static`

This command exposes an nginx server on port 8080 which serves the folder `absolute/path/static` and resolves host `example.com`
