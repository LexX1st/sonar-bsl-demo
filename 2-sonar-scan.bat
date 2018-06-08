IF NOT EXIST .sonarcache mkdir .sonarcache

set CURPWD=%cd%
set CURPWD=%CURPWD:\=/%

for /f "delims== tokens=1,2" %%G in (.env) do set %%G=%%H

docker run -it --env-file=.env --network=container:sonar-bsl-demo_sonar_1 ^
	-v "%CURPWD%/.sonarcache":/root/.sonar/cache ^
	-v "%CURPWD%":/gitrepo ^
	silverbulleters/sonar-history-runner sonar-runner ^
	-Dsonar.host.url=%SONAR_SERVER_URL% ^
	-Dsonar.login=admin -Dsonar.password=admin

@rem -Dsonar.login=%SONAR_TOKEN%
