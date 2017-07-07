set CURPWD=%cd%
set CURPWD=%CURPWD:\=/%

for /f "delims== tokens=1,2" %%G in (.env) do set %%G=%%H

docker run -it --rm --env-file=.env -v "%CURPWD%":/gitrepo silverbulleters/sonar-history-runner sonar-runner -Dsonar.host.url=%SONAR_SERVER_URL% -Dsonar.login=%SONAR_TOKEN%
