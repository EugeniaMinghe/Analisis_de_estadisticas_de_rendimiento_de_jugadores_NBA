# 🏀 Gametime Stats - NBA Data Analytics Consultancy

<p align="center">
  <img src="Imagenes/Basketball.webp" alt="Basketball Image" style="width:100%; max-width:1000px;">
</p>

![GitHub repo size](https://img.shields.io/github/repo-size/EugeniaMinghe/Analisis_de_estadisticas_de_rendimiento_de_jugadores_NBA) ![GitHub contributors](https://img.shields.io/github/contributors/EugeniaMinghe/Analisis_de_estadisticas_de_rendimiento_de_jugadores_NBA) ![GitHub last commit](https://img.shields.io/github/last-commit/EugeniaMinghe/Analisis_de_estadisticas_de_rendimiento_de_jugadores_NBA) ![GitHub issues](https://img.shields.io/github/issues/EugeniaMinghe/Analisis_de_estadisticas_de_rendimiento_de_jugadores_NBA)

## 📌 Tabla de Contenidos
- [¿Quiénes somos?](#quiénes-somos)  
- [¿Qué problema buscamos resolver?](#qué-problema-buscamos-resolver)  
- [Objetivo principal](#objetivo-principal)  
- [Fuentes de datos](#fuentes-de-datos)
- [Sprint #1](#sprint-1)
- [Stack Tecnológico y Herramientas](#stack-tecnológico-y-herramientas)
- [Resultados y Conclusiones](#resultados-y-conclusiones)  

---

## 💼 ¿Quiénes somos? ¿A qué nos dedicamos?

<p align="center">
  <img src="Imagenes/Gametime Stats logo png.png" alt="Gametime Stats Logo" width="200">
</p>

Somos "Gametime Stats", una consultora especializada en el análisis de datos de la **National Basketball Association (NBA)**.  
Nuestra misión es apoyar la toma de decisiones para optimizar el rendimiento de los planteles y ayudar a los equipos a alcanzar sus objetivos de temporada, tanto a corto como a largo plazo. Con años de experiencia en el sector, hemos colaborado exitosamente con algunas de las principales franquicias de la liga, logrando excelentes resultados.

---

## 🧐 ¿Qué problema buscamos resolver?
El mundo de la NBA es sumamente dinámico. Cada partido genera una gran cantidad de información, y las estadísticas son fundamentales para alcanzar el éxito. Un equipo competitivo debe contar con todas las herramientas necesarias para sobreponerse a las adversidades, por lo que ningún detalle puede quedar librado al azar.

La selección de la plantilla —incluyendo al jugador franquicia y su equipo de apoyo— requiere un análisis exhaustivo del rendimiento individual y colectivo. Este análisis permite determinar qué contratos renovar, qué jugadores traspasar y cómo evoluciona el rendimiento a lo largo de la temporada regular, entre otros aspectos.

---

## 🎯 ¿Cuál es nuestro objetivo principal?
El objetivo del proyecto es identificar tendencias y patrones relevantes en las estadísticas de **Los Angeles Lakers** para generar conclusiones que orienten la toma de decisiones sobre renovación de contratos e incorporación de nuevos jugadores, basándose en su rendimiento en la cancha. El análisis abarcará las últimas tres temporadas.

---

## 🗂️ ¿Qué fuentes de datos usaremos?
Trabajaremos con el dataset **NBA Database** disponible en Kaggle [aquí](https://www.kaggle.com/datasets/wyattowalsh/basketball). Esta base de datos contiene información sobre 30 equipos, más de 4800 jugadores y 65000 partidos desde 1946, incluyendo puntajes del 95% de los encuentros.

La información está organizada en 16 tablas CSV que incluyen estadísticas completas de jugadores (activos y retirados), equipos (actuales y antiguos) y resultados de partidos. 

Todas las tareas y actividades se organizarón en dos Sprints, de dos semanas cada uno. 

---

## 🚀 **Sprint #1 - Análisis Exploratorio de los Datos**

<p align="left">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1024px-Octicons-mark-github.svg.png" alt="GitHub Logo" width="50" />
</p>

### Creación del Repositorio Público en GitHub
Una de las primeras tareas clave del proyecto fue la creación de un repositorio público en GitHub. Esto permitió:
- **Centralizar la gestión del código:** Todos los archivos y scripts del proyecto se almacenan de manera ordenada en el repositorio, lo que facilita el acceso y la colaboración.
- **Facilitar la colaboración:** Al ser un repositorio público, cualquier miembro del equipo, o incluso colaboradores externos, pueden revisar, sugerir mejoras o hacer contribuciones al proyecto.
- **Control de versiones:** Gracias a GitHub, el control de versiones del código y los datos asociados es sencillo, lo que asegura que los cambios importantes sean rastreados y se puedan revertir en caso necesario.
  
El repositorio también incluye documentación básica sobre el proyecto y los archivos, organizada en carpetas según la tarea a la cual se vinculan, imágenes y un archivo README que describe el flujo del proyecto.

<p align="center">
  <img src="Imagenes/file-earmark-bar-graph-svgrepo-com.svg" alt="EDA Icon" style="width:100px;"/>
</p>

### Selección de los archivos
La selección de los archivos relevantes es un paso fundamental en el análisis exploratorio. En esta fase, se eligieron los csv que contienen los datos más completos y útiles para el análisis de rendimiento de los jugadores, considerando las variables necesarias para los análisis posteriores.

## 🔄 **ETL** - Extracción, Transformación y Carga de Datos

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/9/94/Apache_NiFi_logo.svg" alt="ETL Logo" style="width:100%; max-width:400px;" />
</p>

El filtrado de las tablas se realizó mediante Python en Visual Studio Code, con el objetivo de eliminar los datos que consideramos innecesarios para el análisis (reduciendo el consumo de recursos), modificar el tipo de dato cuando se requiriese y normalizar el nombre de las columnas en las diferentes tablas. 

- **common_player_info**: filtrado por el equipo de interés (Lakers), conversión de columnas a los tipos de datos adecuados (birthdate, from year, to year), elimicaión de ocho columnas (`player_slug`, `display_last_comma_first`, `display_fi_last`, `playercode`, `team_name`, `team_abbreviation`, `team_code`, `team_city` -las últimas cuatro porque esta información está en la tabla `info_teams`-), imputación de valores nulos con "No Data" en tres columnas (jersey, draft_round y draft_number), y cambio de nombre de las columnas `person_id` por `player_id` y `display_first_last` por `full_name`. Guardado como: `common_player_info_final`.

- **draft_history**: filtrado por el equipo de interés (LAL), eliminación de tres columnas (`team_city`, `team_name` y `team_abbreviation`-porque la informaicón está en la tabla `info_teams`-) y cambio de nombre de las columnas `person_id` por `player_id` y `player_name` por `full_name`. Guardado como `draft_history_final`.

- **games_lakers_tres_temporadas**: filtrado por el equipo de interés (LAL) y por la fecha del juego para tener las últimas tres temporadas que es lo que vamos a analizar y conversión de columnas a los tipos de datos adecuados (gamedate). 

- **info_teams**: conversión de columnas a los tipos de datos adecuados (year founded) y cambio de nombre de la columna `id` por `team_id`.

- **line_scored_filtered**: filtrado por los game_id de interés para nuestro análisis, conversión de columnas a los tipos de datos adecuados (game date est) y eliminación de seis columnas (`team_abbreviation_home`, `team_city_name_home`, `team_nickname_home`, `team_abbreviation_away`, `team_city_name_away`, `team_nickname_away` -porque esa información está en tabla `info_teams`-).
    
- **other_stats_filtered**: filtrado por los game_id de interés para nuestro análisis y eliminación de cuatro columnas (`team_abbreviation_home`, `team_city_home`, `team_abbreviation_away`, `team_city_away` -porque esa información está en la tabla `info_teams`-).

- **players**: filtrado por actividad, eliminación de la columna (`is_active`) y cambio de nombre de la columna `id` por `player_id`. Guardado como `players_filtered`.

- **players_Lakers**: tabla players filtrada por player_id para dejar solo los jugadores de los Lakers, eliminación de la columna (`is_active`) y cambio de nombre de la columna `id` por `player_id`. 

- **play_by_play_filtered**: filtrado por los game_id de interés para nuestro análisis, eliminación de las columnas con más de 50% de datos nulos y de aquellas cuya información puede obtener de la tabla `players` (`player1_name`, `player1_team_id`, `player1_team_city`, `player1_team_nickname`, `player1_team_abbreviation`, `player2_name`, `player2_team_id`, `player2_team_city`, `player2_team_nickname`, `player2_team_abbreviation`, `player3_name`, `player3_team_id`, `player3_team_city`, `player3_team_nickname`, `player3_team_abbreviation`, `homedescription`, `neutraldescription`, `visitordescription`) y eliminación de cuatro duplicados.

**NINGÚN CSV, EXCEPTO `PLAY BY PLAY`, TENÍA DATOS DUPLICADOS.**

---

## 🖥️ **Stack Tecnológico y Herramientas**
<p align="center">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white" />
  <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" />
  <img src="https://img.shields.io/badge/VS%20Code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white" />
</p>

---
## 📝 Resultados y Conclusiones


