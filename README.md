# docker-laravel
The Docker image for Laravel

## Build
```bash
$ docker build --tag test_laravel .
```

## Run
```bash
$ docker run --rm -p 80:8080 test_laravel
```

## Usage
```bash
$ curl -i -X GET http://localhost/

HTTP/1.1 200 OK
Host: localhost
Date: Sat, 07 Nov 2020 08:57:09 GMT
Connection: close
X-Powered-By: PHP/7.4.12
Content-Type: text/html; charset=UTF-8
Cache-Control: no-cache, private
Date: Sat, 07 Nov 2020 08:57:09 GMT

...

```