set CURPWD=%cd%
set CURPWD=%CURPWD:\=/%

rem GitBook не всегда нормально отрабатывает Ctrl+C - поэтому надо явно останавливать контейнер если он есть FIXME
docker stop sonarbook-serve > nul 2> nul

docker run --rm --name "sonarbook-book" -v "%CURPWD%/:/gitbook" -p 4000:4000 billryan/gitbook gitbook build

docker run --rm --name "sonarbook-serve" -v "%CURPWD%/:/gitbook" -p 4000:4000 billryan/gitbook gitbook serve
