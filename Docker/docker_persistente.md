```sh
docker volume create web_data
docker run --name web2 -d -p 8081:80 \
    -v web_data:/usr/share/nginx/html nginx:alpine
```
