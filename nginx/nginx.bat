@echo off
if "%1"=="-s" (
    echo "nginx start"
    docker start nginx_1
    goto end
) else if "%1"=="-e" (
    echo "nginx end"
    docker stop nginx_1
    goto end
) else if "%1"=="-d" (
    echo "nginx delete"
    docker rm nginx_1
    goto end
) else if "%1"=="-m" (
    echo "nginx make"
    docker run --name nginx_1 -v "D:\Server\Masamin-s_Docker_systems\nginx\html":/usr/share/nginx/html:ro -d -p 8080:80 nginx
    goto end
) else (
echo "This bat file is needed char under here"
echo "-s: start nginx"
echo "-e: end nginx"
echo "-d: delete nginx"
echo "-m: make nginx"
goto end
)
:end
echo 終了