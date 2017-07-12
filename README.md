## Демонстрация возможностей SonarQube для 1С

репозиторий содержит

* автоматический запуск выгрузки в git через `GITSYNC` - [https://github.com/oscript-library/gitsync](https://github.com/oscript-library/gitsync)
* запуск Sonar сканера через `docker` - [https://github.com/silverbulleters-research/sonar-bring-me-back](https://github.com/silverbulleters-research/sonar-bring-me-back)
* отправка данных на сервер `SonarQube` - [https://sonar.silverbulleters.org/dashboard?id=demo-1c](https://sonar.silverbulleters.org/dashboard?id=demo-1c)
* настройку для Visual Studio Code для подключения `Linter` - [https://github.com/silverbulleters/sonarqube-inject-vsc](https://github.com/silverbulleters/sonarqube-inject-vsc)

## № Для работы используется

* хранилище 1С
* oscript.io с пакетами `vanessa-runner` и `gitsync`
* образ docker `silverbulleters/sonar-history-runner`

примечание: для локальной отладки используется `docker-compose` для запуска полноценного контура SonarQube

### Результат анализа и его история

* доступен тут [https://sonar.silverbulleters.org/dashboard/index/demo-1c](https://sonar.silverbulleters.org/dashboard/index/demo-1c)

### Cтатус в виде бейджиков

| Порог качества | Технический долг | Ошибки | Замечания по коду | Сложность функций |
| --- | --- | --- | --- | --- |
| [![Quality Gate](https://sonar.silverbulleters.org/api/badges/gate?key=demo-1c)](https://sonar.silverbulleters.org//dashboard/index/demo-1c) | [![New Bugs](https://sonar.silverbulleters.org/api/badges/measure?key=demo-1c&metric=sqale_debt_ratio)](https://sonar.silverbulleters.org//dashboard/index/demo-1c) | [![Bugs](https://sonar.silverbulleters.org/api/badges/measure?key=demo-1c&metric=bugs)](https://sonar.silverbulleters.org//dashboard/index/demo-1c) | [![Bugs](https://sonar.silverbulleters.org/api/badges/measure?key=demo-1c&metric=code_smells)](https://sonar.silverbulleters.org//dashboard/index/demo-1c) | [![Bugs](https://sonar.silverbulleters.org/api/badges/measure?key=demo-1c&metric=function_complexity)](https://sonar.silverbulleters.org//dashboard/index/demo-1c) |

### Как работает

![img/SonarBSLDemo.gif](img/SonarBSLDemo.gif)

#### Пример работы с XPath

1С код представляет собой объектную модель формата AST, таким образом становится доступным создание своих собственных правил с помощью XPath выражений поиска



