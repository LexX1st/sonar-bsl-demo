Установка SonarRunner
---------------------

В общем случае для запуска проверки по триггеру «изменение» в GIT, вам
понадобится следующий софт на ноде проверки:

-   Oracle JDK;

-   Wget;

-   7zip (unzip);

-   Chocolatey в случае Windows;

-   MSBuild в случае с C\#.

**Примечание** – очень полезная статья: как настроить SonarQube на Windows
сервере
<https://blogs.msdn.microsoft.com/visualstudioalm/2015/09/28/quickstart-analyzing-net-projects-with-sonarqube-msbuild-or-visual-studio-online-and-third-party-analyzers-stylecop-resharper/>
и TFS (VSTS) для C\# проектов.  
Команды установки сканера кода на агента сборки (пользователям linux заменить
choco на apt/yum)

|   | C\#                                                                                                                                                                                                                                                                                                                                        | Java                                                                     | Остальные                                                                                                                                                                                               |
|---|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   | *choco install oraclejdk git choco install microsoft-build-tools choco install msbuild-sonarqube-runner*                                                                                                                                                                                                                                   | *choco install oraclejdk git maven*                                      | *choco install oraclejdk wget git wget* <https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.8.zip>  *unzip ./sonar-scanner-2.8.zip set PATH=%PATH%;./sonar-scanner-2.8/bin* |
|   | *MSBuild.SonarQube.Runner.exe begin /k:"silverbulleters:oscript-eco" /n:"OScript Enterprise Components" /v:"1.0.%APPVEYOR_BUILD_NUMBER%" /d:sonar.host.url=http://sonar.silverbulleters.org /d:sonar.login=%SonarToken% /d:sonar.cs.opencover.reportsPaths="%CD%\\opencover.xml" MSBuild.exe /t:Rebuild SonarQube.Scanner.MSBuild.exe end* | *mvn sonar:sonar -Dsonar.server=%SONAR_URL% -Dsonar.login=%SONAR_TOKEN%* | *sonar-scanner -Dsonar.server=%SONAR_URL% -Dsonar.login=%SONAR_TOKEN%*                                                                                                                                  |
