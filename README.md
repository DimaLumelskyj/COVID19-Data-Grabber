
<h1 align="center">
  <img src="NO-VIRUS.svg" alt="Covid19-Data" width="200">
  <br>
  Disease history data grabber
</h1>

# Description
This project is an data grabber about covid-19 disease history in Poland.
Application features: 
- Project derived from Spring-Boot starter.
- Data grabber task is running as an scheduled task using QUARTZ library.
- User can set how often program is running in properties file.
- As an database is used PostgreSQL.
- Currently program only works with government datasource, possible to add another interface implementation.
 
# Data provider
Ministry of Health and Chief Sanitary Inspectorate data presented on 
<a href="https://www.gov.pl/web/koronawirus/wykaz-zarazen-koronawirusem-sars-cov-2">governments website</a>.

In the html source between the tag ```<pre></pre>``` there is a JSON with whole data
inside value of the ```"parsedData"```.

```
<pre id="registerData" class="hide">
    {
        "description":"...",
        "parsedData":"..JSON DATA..",
        "fileName":"mapa_woj_1085.csv",
        ...
    }
</pre>
```
These JSON before parsing should be prepared because inside a string there is additional backslash to remove:
- before backslash remove 
```
    {
        \"Województwo\":\"Cała Polska\",
        \"Liczba\":\"1085\",
        \"Liczba zgonów\":\"15\",
        \"Id\":\"t00\"
    }
```
- after cleaning 
```
    {
        "Województwo":"Cała Polska",
        "Liczba":"1085",
        "Liczba zgonów":"15",
        "Id":"t00"
    }
```
# Description of the repository files
- Database scripts: contains daabase creation sql and usefull query's
- SRC\config: configuration classes to set up scheduler runner and locale  
- SRC\domain: domain classes
- SRC\dto: dto mapping class
- SRC\job: job description classes
- SRC\repo: repository JPA classes
- SRC\service: service classes, data parsing
- SRC\util: utility classes
 from 

# Entity relationship diagram
The ER diagram that fits domain classes looks as follows:

<a style="justify-content: center">
<img src="ER-diagram.svg" alt="ER-DIAGRAM" width="800">
</a>

# Getting Started

That guidance will get you a copy of the project up and running on your local machine for development and experimentation purposes.

### Prerequisites

```
Java JDK (11+)
Maven
Git
PostgreSQL
Lombok plugin for IDEA
```

### Installing

Cloning project

```
git clone https://github.com/DimaLumelskyj/COVID19-Data-Grabber.git
```

## Deployment

This Spring Boot application can be started in a few ways

Using IDEA

```
Run the main method from Kinex application (Covid19Application.main())
```

Packaging the application as a JAR and run it
```
mvn clean package && java -jar target/covid19-0.0.1-SNAPSHOT.jar
```

Using Maven Spring Boot plugin
```
mvn spring-boot:run
```

## Things

## Author
* [Dmytro Lumelskyj] 

Icon made by <a href="https://www.flaticon.com/authors/freepik">Freepik</a> from www.flaticon.com and modified by Dmytro Lumelskyj
