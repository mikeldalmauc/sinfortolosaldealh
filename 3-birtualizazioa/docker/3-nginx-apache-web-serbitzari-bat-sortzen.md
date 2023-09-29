## Web serbitzari bat sortu (Nginx)

Sortu indexa 
	index.html
	
Sortu Dockerfilea

```
FROM nginx

# Copiatu Index.html 
COPY . /usr/share/nginx/html
```

Irudia sortu


```docker build -t webPolita .```  

 -t webPolita : Tag etiketa
 . contsolaren egungo kokapena (hemen Dockerfile bat egon behar da presente)
 
```docker run --name webPolita -d -p 8080:80 web-polita ```
  
[Nginx DockerHuben](https://hub.docker.com/_/nginx)

## Web serbitzari bat sortu (Apache)

TODO
[Apache DockerHuben](https://hub.docker.com/_/httpd)

