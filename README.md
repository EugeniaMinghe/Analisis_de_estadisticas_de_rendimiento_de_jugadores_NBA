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
- [Sprint #2](#sprint-2)
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

<p> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1024px-Octicons-mark-github.svg.png" alt="GitHub Logo" width="50" style="float: left; margin-right: 10px;"/>

### Creación del Repositorio Público en GitHub
Una de las primeras tareas clave del proyecto fue la creación de un repositorio público en GitHub. Esto permitió:
- **Centralizar la gestión del código:** Todos los archivos y scripts del proyecto se almacenan de manera ordenada en el repositorio, lo que facilita el acceso y la colaboración.
- **Facilitar la colaboración:** Al ser un repositorio público, cualquier miembro del equipo, o incluso colaboradores externos, pueden revisar, sugerir mejoras o hacer contribuciones al proyecto.
- **Control de versiones:** Gracias a GitHub, el control de versiones del código y los datos asociados es sencillo, lo que asegura que los cambios importantes sean rastreados y se puedan revertir en caso necesario.

El repositorio también incluye documentación básica sobre el proyecto y los archivos, organizada en carpetas según la tarea a la cual se vinculan, imágenes y un archivo README que describe el flujo del proyecto.
</p>

### 📄 Selección de los archivos
La selección de los archivos relevantes es un paso fundamental en el análisis exploratorio. En esta fase, se eligieron los csv que contienen los datos más completos y útiles para el análisis de rendimiento de los jugadores, considerando las variables necesarias para los análisis posteriores.

### 🔄 **ETL** - Extracción, Transformación y Carga de Datos

El filtrado de las tablas se realizó mediante Python en Visual Studio Code, con el objetivo de eliminar los datos que consideramos innecesarios para el análisis (reduciendo el consumo de recursos), modificar el tipo de dato cuando se requiriese y normalizar el nombre de las columnas en las diferentes tablas. 

- **common_player_info**: filtrado por el equipo de interés (Lakers), conversión de columnas a los tipos de datos adecuados (birthdate, from year, to year), eliminación de ocho columnas (`player_slug`, `display_last_comma_first`, `display_fi_last`, `playercode`, `team_name`, `team_abbreviation`, `team_code`, `team_city` -las últimas cuatro porque esta información está en la tabla `info_teams`-), imputación de valores nulos con "No Data" en tres columnas (jersey, draft_round y draft_number), y cambio de nombre de las columnas `person_id` por `player_id` y `display_first_last` por `full_name`. Guardado como: `common_player_info_final`.

- **draft_history**: filtrado por el equipo de interés (LAL), eliminación de tres columnas (`team_city`, `team_name` y `team_abbreviation`-porque la información está en la tabla `info_teams`-) y cambio de nombre de las columnas `person_id` por `player_id` y `player_name` por `full_name`. Guardado como `draft_history_final`.

- **games_lakers_tres_temporadas**: filtrado por el equipo de interés (LAL) y por la fecha del juego para tener las últimas tres temporadas que es lo que vamos a analizar y conversión de columnas a los tipos de datos adecuados (gamedate). 

- **info_teams**: conversión de columnas a los tipos de datos adecuados (year founded) y cambio de nombre de la columna `id` por `team_id`.

- **line_scored_filtered**: filtrado por los game_id de interés para nuestro análisis, conversión de columnas a los tipos de datos adecuados (game date est) y eliminación de seis columnas (`team_abbreviation_home`, `team_city_name_home`, `team_nickname_home`, `team_abbreviation_away`, `team_city_name_away`, `team_nickname_away` -porque esa información está en tabla `info_teams`-).
    
- **other_stats_filtered**: filtrado por los game_id de interés para nuestro análisis y eliminación de cuatro columnas (`team_abbreviation_home`, `team_city_home`, `team_abbreviation_away`, `team_city_away` -porque esa información está en la tabla `info_teams`-).

- **players**: filtrado por actividad, eliminación de la columna (`is_active`) y cambio de nombre de la columna `id` por `player_id`. Guardado como `players_filtered`.

- **players_Lakers**: tabla players filtrada por player_id para dejar solo los jugadores de los Lakers, eliminación de la columna (`is_active`) y cambio de nombre de la columna `id` por `player_id`. 

- **play_by_play_filtered**: filtrado por los game_id de interés para nuestro análisis, eliminación de las columnas con más de 50% de datos nulos y de aquellas cuya información puede obtener de la tabla `players` (`player1_name`, `player1_team_id`, `player1_team_city`, `player1_team_nickname`, `player1_team_abbreviation`, `player2_name`, `player2_team_id`, `player2_team_city`, `player2_team_nickname`, `player2_team_abbreviation`, `player3_name`, `player3_team_id`, `player3_team_city`, `player3_team_nickname`, `player3_team_abbreviation`, `homedescription`, `neutraldescription`, `visitordescription`) y eliminación de cuatro duplicados.

**NINGÚN CSV, EXCEPTO `PLAY BY PLAY`, TENÍA DATOS DUPLICADOS.**

## 🏀 **Incorporación de Nuevos Datos de los Lakers: Temporadas 2021-2024**

Para llevar a cabo un análisis actualizado del rendimiento de los jugadores de los **Los Angeles Lakers**, se incorporaron los datos correspondientes a las temporadas 2021-2024 (temporada regular y Playoffs 2021-2022 [aquí](https://www.kaggle.com/datasets/vivovinco/nba-player-stats?select=2021-2022+NBA+Player+Stats+-+Regular.csv), temporada regular y Playoffs 2022-2023 [aquí](https://www.kaggle.com/datasets/vivovinco/20222023-nba-player-stats-regular?select=2022-2023+NBA+Player+Stats+-+Regular.csv) y temporada regular y Playoffs 2023-2024 [aquí](https://www.kaggle.com/datasets/vivovinco/2023-2024-nba-player-stats)). Esto incluye nuevas estadísticas de jugadores, registros de partidos y cambios en el rendimiento a lo largo de las temporadas recientes. Esta información es crucial para evaluar el impacto de los jugadores clave y su contribución a los resultados del equipo.

Los datos adicionales se integraron utilizando los mismos procedimientos de limpieza y transformación que los datos anteriores, asegurando que se mantuviera la coherencia en los registros y las métricas utilizadas en el análisis. 
A cada tabla se le adicionaron dos columnas (type season y season year) para indicar el tipo de temporada y el año de la misma, se filtraron por equipo para obtener los estadísticos de los jugadores de nuestro equipo objetivo y finalmente se unieron en una única tabla (**lakers_21_24**). 

## 💾 **Creación de la Base de Datos** <a name="creacion-base-de-datos"></a>

Una vez realizados los procesos de **ETL**, se creó la base de datos para organizar y almacenar las tablas de estadísticas de jugadores, equipos y partidos. Esta base de datos es fundamental para permitir consultas eficientes y análisis rápidos.

La base de datos fue estructurada utilizando **SQL Server**, con tablas relacionadas por claves primarias y foráneas para asegurar la integridad de los datos. Las tablas filtradas fueron importadas a la base de datos asegurando el tipo de dato correcto para cada columna como también la normalización del nombre de cada una de ellas. De este modo la base de datos **GameTimeStats** contiene las siguientes tablas **Teams** (con la información sobre los equipos), **PlayerStatistics** (estadísticos de las temporadas 2021-2024 de los jugadores de los Lakers), **InfoPlayers** (información sobre los jugadores de los Lakers incoporando los nuevos de las últimas temporadas), **PlayersLAL** (información de los jugadores de los Lakers previos), **Players** (información de jugadores en general), **PlayByPlay** (información sobre los diferentes partidos de las últimas temporadas), **OtherStats** (otros estadísticos de los partidos de las últimas temporadas), **LineScored** (información sobre los resultados de los partidos), **GamesLakers** (estadísticos y resultados de los partidos de los Lakers de las últimas tres temporadas) y **DraftHistory** (información sobre los jugadores drafteados a lo largo del tiempo por los Lakers). 

#### PlayerStatistics 

Para los jugadores presentes en la tabla **PlayerStatistics** se generó una nueva columna con el PlayerID, el cual se completó a partir de las tablas **InfoPlayers** y **Players** usando el FullName como columna vinculante. Sin embargo, para aquellos casos en que los jugadores no se encontraron en las tablas mencionadas, se les generó un nuevo ID asegurándonos de no pisar ninguno en existencia. Posteriormente, dichos nuevos IDs fueron agregados a la tabla **InfoPlayers** en conjunto con su FullName, FirstName y LastName (asegurando que solo los diferentes fueran incorporados, evitando así duplicaciones de los datos y futuros inconvenientes en la base de datos),luego ambas tablas fueron relacionadas mediante el PlayerID (PK en **InfoPlayers** y FK en **PlayerStatistics**), y finalmente, las columnas FullName, FirstName y LastName fueron eliminadas de **PlayerStatistics**. 

## 🗃️ Diagrama Entidad-Relación

Con las PKs (Primary Keys) y las FK (Foreign Keys) ya establecidas en cada tabla, permitiendo la vinculación entre nuestras tablas y asegurando así su integridad referencial, se construyó el diagrama de Entidad-Relación en SQL Server, y luego se realizó el esquema en Lucid [aquí](https://lucid.app/publicSegments/view/46ff3eca-2e7c-4966-b24d-6d5411212be4/image.jpeg). **Es importante aclarar que las PKs fueron asignadas a campos que identifiquen de manera única los registros de las respectivas tablas.**

## 🔒 **Seguridad de la Base de Datos en Google Cloud**  

En el contexto de la administración de una base de datos en **Google Cloud**, se han implementado medidas de seguridad esenciales para proteger los datos y asegurar el acceso autorizado.  

### Principales acciones realizadas:  
- **Creación de un Inicio de Sesión (Login)**:  
  Se ha configurado un inicio de sesión seguro mediante autenticación gestionada por Google Cloud. Esto garantiza que solo usuarios autorizados puedan acceder a los recursos de la base de datos.  

- **Creación de un Usuario (User)**:  
  Se ha definido un usuario asociado al inicio de sesión con permisos específicos para interactuar con la base de datos. El manejo de permisos se realiza a través de **Identity and Access Management (IAM)**, lo que permite un control preciso y detallado.  

- **Asignación de Roles**:  
  Los roles se han configurado siguiendo el principio de **menor privilegio**, otorgando solo los permisos estrictamente necesarios para cada usuario. Esto incluye permisos para lectura, escritura y administración, según las responsabilidades asignadas.  

Estas medidas de seguridad permiten garantizar la integridad de los datos, protegerlos contra accesos no autorizados y cumplir con los estándares de seguridad en la nube de Google Cloud.  

## 🚀 **Automatización de la Ingesta de Datos** 

### 1. 📂 **Transferencia de Archivos desde Google Drive al Bucket usando Cloud Storage Transfer Service**
**Creación de un Trabajo en Cloud Storage Transfer Service:**
A través de **Storage Transfer Service** disponible en Google Cloud se crea un nuevo trabajo de transferencia (**Lista de URL**), detallando:
   - **Origen:** Bucket de Google Cloud Storage (`to_move`) como la fuente de datos (almacena un archivo .tsv con el link a la carpeta de Google Drive que recibe los csv nuevos con las estadísticas de los jugadores semanalmente).
   - **Destino:** Bucket de Google Cloud Storage (`to_database`).
   - **Configuración:**
     - La transferencia se ejecuta los días domingo de cada semana transfiriendo los archivos cargados al drive.
     - Incluye todos los archivos en el bucket específicado como origen.
Configuramnos la frecuencia del trabajo para que se ejecute semanalmente, todos los domingos. Verificamos la configuración y se **"Crear trabajo"**.

### 2. 🛠️ **Procesar los Archivos en Cloud Run (Cargar los Datos de Cloud Storage a BigQuery)**
**Creación de un Servicio de Cloud Run para Cargar los Archivos:**
A través de **Cloud Run**, creamos un nuevo servicio y seleccionamos la imagen de Docker ya existente (`hello`). El servicio de **Cloud Run** se conecta al bucket de **Cloud Storage** (`to_database`), lee los archivos CSV ahí guardados y luego carga los datos a **BigQuery**. Aceptamos **"Crear"** para desplegar el servicio de Cloud Run.

### 3. 🗓️ **Usar Cloud Scheduler para Automatizar la Ejecución de Cloud Run**
**Creación de un Trabajo en Cloud Scheduler:**
Mediante **Cloud Scheduler** creamos un nuevo trabajo y detallamos:
   - **Nombre del trabajo:** `run-player-stats`.
   - **Frecuencia:** Configuramos la ejecución (`0 0 * * 1` para ejecutarlo cada lunes a medianoche).
Configuramos la acción HTTP para ejecutar Cloud Run, colocando:
   - **Destino:** Seleccionamos **HTTP**.
   - **URL:** Ingresamos la URL del servicio de Cloud Run creado previamente.
   - **Método:** Elegimos **POST**.
Aceptamos **"Crear"** el trabajo.

### 4. 📝 **Validación del Proceso**

- **Notificación en Google Cloud:** Configuramos el envío de una notificación que informe el estado de cada etapa del proceso, permitiendo recibir alertas en caso de errores o de finalización exitosa.  
- **Verificación de Errores:** Si alguna fase del flujo de datos presenta problemas, se generan registros detallados que facilitan la identificación y corrección de los mismos.  
- **Seguimiento en Tiempo Real:** El monitoreo continuo garantiza que el proceso de transferencia, carga y automatización se ejecute de manera correcta, brindando mayor confiabilidad en la gestión de los datos.  

---
## 🚀 **Sprint #2 – Desarrollo del Reporte**

### :bar_chart: **Creación del Archivo .pbix y Espacio de Trabajo en Power BI Service**
Una vez completados los procesos de ETL y la organización de la base de datos, el siguiente paso fue iniciar el desarrollo del archivo `.pbix`. Este actúa como el núcleo para el diseño del reporte y dashboard interactivo, consolidando las visualizaciones necesarias para el análisis de los datos de los Lakers.

### 1. :raised_hands: **Configuración del Espacio de Trabajo en Power BI Service**
Para garantizar una colaboración efectiva entre todos los miembros del equipo, se creó un espacio de trabajo dedicado en Power BI Service. Este espacio centraliza los recursos del proyecto permitiendo una mejor interacción. Una vez diseñado localmente, el archivo `.pbix` fue publicado en Power BI Service, facilitando el acceso y colaboración sobre los reportes y dashboards generados.

### 2. :outbox_tray: **Importación de Datos a Power BI desde BigQuery**
Para integrar los datos almacenados en Google Cloud, se configuró una conexión directa entre Power BI y BigQuery, aprovechando su robustez para gestionar grandes volúmenes de datos y realizar análisis avanzados.

### 3. :pushpin: **Selección de Tablas Relevantes**  
  - Se incluyeron tablas filtradas y procesadas en el ETL, como `Players` (renombrada como `InfoPlayers`), `PlayerStatistics` (renombrada como `PlayersLAL`), `GamesLakers` (renombrada como `Games`), `Teams` (renombrada como `InfoTeams`), y `OtherStats` (mantuvo el mismo nombre).
  - Cada tabla fue revisada para confirmar la precisión de sus columnas y datos.

### 4. :bookmark_tabs: **Incorporación de Tablas Adicionales**
- **Tabla de Calendario:**  
  Se incluyó una tabla calendario la cual es esencial para relacionar temporalmente las métricas de los jugadores, facilitando análisis basados en periodos específicos.
- **Tabla de Medidas:**
  Se incluyó una tabla de medidas que agrupara todas las métricas creadas durante la elaboración del dashboard. De este modo, la organización del modelo de datos es más clara y eficiente (todas las medidas concentradas en única tabla y no dispersas entre las distintas tablas incluidas en el modelo facilita la navegación y la modificación y edición de las métricas), el rendimiento del modelo se ve optimizado (las consultas se mejoran), el mantenimiento es más sencillo (las medidas están centralizadas en una tabla evitando confusiones y errores si es necesario realizar cambios y el trabajo se ve optmizado ayudando a domunetar y estructurar mejor el modelo), y se evita la mezcla entre las medidas y las columnas calculadas en las diferentes tablas.    
- **Tabla de Prospects:** Se integró una tabla adicional denominada Prospectos, que contiene información estadística de jóvenes promesas del baloncesto para el año 2025. Los datos provienen del conjunto " 2025 NBA Draft Prospects Stats” disponible [aquí]( https://basketball.realgm.com/nba/draft/prospects/stats) y ofrecen métricas clave como puntos por partido, eficiencia y contribución al equipo en ligas menores y programas universitarios.
- **Tabla de Renovaciones de Contratos:** Se integró una nueva tabla llamada RenovacionesContratos, que contiene los nombres de los jugadores del plantel actual, su id, su edad, su posición y una recomendación "Si" si se recomienda renovar su contrato o "No" si no se recomienda renovarlo, en base a la aplicación del modelo ML de clasificación binaria Random forest.

### 5. :card_file_box:**Configuración del Modelo de Datos**
- Relación de las tablas importadas en Power BI mediante claves primarias y foráneas, garantizando la integridad referencial de los datos.
- Implementación de un modelo interconectado que permitió análisis dinámicos y personalizados.

Con esta configuración, Power BI se estableció como un entorno versátil para el análisis y la visualización de datos.

## :abacus: **Creación de Medidas y Columnas Necesarias para el Análisis**
Para enriquecer los datos, se crearon medidas y columnas calculadas en Power BI que facilitaron el análisis de métricas clave del rendimiento del equipo y jugadores.

- **Columnas Calculadas**: Las columnas calculadas se desarrollaron para agregar información que no estaba presente originalmente en las tablas importadas. Algunos ejemplos relevantes incluyen:

    - **Tabla `Games`**
      - **PrimerAño:** Indica el primer año en que se registró información para una temporada de la NBA en la tabla.
      - **TemporadaNBA:** Identifica la temporada de la NBA asociada a cada registro. Proporciona un contexto claro para los datos relacionados con partidos basados en temporadas.
    
    - **Tabla `PlayersLAL`**
      - **AñoOrden:** Define un orden cronológico basado en los años para facilitar la organización y análisis de datos históricos.
      - **Combinada:**  Utiliza la función `switch` de DAX para asignar a cada jugador un enlace directo a su imagen.
      - **IDImagen:** Genera un identificador único para las imágenes asociadas a cada jugador, asegurando un manejo organizado de los archivos visuales.
      - **ImagenURL:** Incluye el enlace directo a la imagen de cada jugador, permitiendo la integración visual en dashboards y reportes.
      - **Prefijo:** Define un elemento fijo utilizado como parte de las combinaciones o referencias únicas.
      - **Sufijo:** Agrega un elemento dinámico complementario para las referencias únicas de los jugadores.


    - **Tabla `Prospects`**
      - **Imagenes:** Contiene las imágenes relacionadas con los prospectos, facilitando una identificación visual en reportes y análisis.
      - **PlayerID:** Proporciona un identificador único para cada prospecto, asegurando su vinculación en el modelo de datos.
      - **Posición:** Define la posición del prospecto en el campo de juego (PG, SG, SF, PF, C), permitiendo análisis basados en roles específicos.
      - **TRB:** Representa los rebotes totales realizados por cada prospecto, una métrica clave para evaluar su impacto en el juego.


Estas columnas calculadas fueron diseñadas para optimizar el modelo de datos y garantizar la claridad y utilidad en las visualizaciones desarrolladas posteriormente. Su incorporación permitió una mejor integración y análisis interconectado entre las métricas del equipo y los prospectos.


- **Medidas Calculadas**: Las medidas calculadas permitieron obtener insights para el análisis de tendencias y patrones. Estas medidas de efectividad, promedio y porcentajes, profundizan en la efectividad del equipo y los jugadores. Entre ellas destacan:
  - **Promedio de Puntos por Partido:** Se desarrolló una medida para calcular el promedio de puntos por partido de los jugadores.
  - **Asistencias Efectivas:** Calcula la proporción de asistencias de los Lakers en relación con el total de puntos anotados por el equipo en sus partidos, proporcionando una métrica que representa la eficiencia del equipo al transformar asistencias en puntos.
  - **Victorias y Derrotas:** Para evaluar el rendimiento del equipo, se crearon medidas que calculan la cantidad de partidos ganados y la cantidad de partidos perdidos por los Lakers como local y como visitante
  
Estas medidas y columnas calculadas consolidaron un modelo analítico robusto que sirvió como base para la generación de insights estratégicos y visualizaciones en los dashboards interactivos.

## :chart_with_upwards_trend: Diseño de los Reportes y Gráficos Utilizados.
El diseño de reportes y gráficos en esta etapa se enfocó en crear dashboards interactivos y dinámicos, cada uno orientado a proporcionar información clara y precisa según los objetivos del análisis.

### 👥 **Dashboard "Team":**
Proporciona una visión integral del rendimiento del equipo Los Angeles Lakers, con un enfoque en métricas clave tanto como local como visitante, además de porcentajes de efectividad. Esta diseñado para facilitar el análisis dinámico de las temporadas, permitiendo a los usuarios comprender las fortalezas y áreas de mejora del equipo.
-	**Filtros Dinámicos:** Incluye botones interactivos para seleccionar temporadas específicas como Pretemporada, Regular, Playoffs y los años 2020-2021, 2021-2022, 2022-2023.
-	**Uso y Propósito:** Permite al equipo técnico y analistas identificar patrones clave en el rendimiento de los Lakers, facilitando decisiones estratégicas basadas en datos precisos. La información general y los gráficos interactivos hacen que sea una herramienta esencial para comprender el impacto de factores como eficiencia en tiros y rebotes en los resultados del equipo.
  
### 🏀 **Dashboard "Players":** 
Se enfoca en proporcionar una vista completa del rendimiento individual de los jugadores activos de Los Angeles Lakers. Este dashboard está diseñado para analizar en detalle las métricas clave y estadísticas de cada jugador, facilitando la comparación y evaluación por posiciones.
-	**Puntos por Posición:**
Gráfico de barras que muestra los puntos totales anotados por los jugadores clasificados según su posición: ala-pívot (PF), escolta (SG), pívot (C), base (PG) y alero (SF). Este gráfico permite identificar las posiciones que aportan mayor cantidad de puntos al equipo.
-	**Faltas y Turnovers por Posición:** Gráfico de barras comparativo que presenta la cantidad de faltas personales y pérdidas de balón (turnovers) según la posición de los jugadores. Útil para evaluar la disciplina y control del balón por rol dentro del equipo.

-	**Relación entre Puntos, Edad y Minutos Jugados:** Gráfico de dispersión que analiza cómo los puntos promedio anotados por los jugadores se relacionan con su edad y minutos jugados, categorizados por posición (C, PF, PG, SF, SG). Ideal para identificar tendencias de desempeño según la experiencia y tiempo en cancha.


-	**Estadísticas de Jugadores:** Gráfico de radar que detalla diferentes métricas como: tiros de campo, asistencias, bloqueos, tiros libres, entre otras. Permite visualizar de manera efectiva las fortalezas y áreas de mejora de los jugadores.
-	**Filtros por Jugadores Activos:** A la derecha del dashboard se incluye un filtro con los nombres de los jugadores activos para poder evaluar sus estadísticas independientemente.

-	**Filtros por Posición:** Incluye un filtro dinámico que permite seleccionar una posición específica para analizar solo a los jugadores que desempeñan ese rol.


-	**Uso y Propósito:** El dashboard "Players" está diseñado para proporcionar insights detallados que ayudan a evaluar el desempeño de cada jugador de forma individual. Al incorporar gráficos y filtros interactivos, este dashboard se convierte en una herramienta fundamental para identificar jugadores clave y explorar sus aportaciones al rendimiento general del equipo.
  
### 🥇🥈🥉 **Dashboard "Top 3":**
Realiza una comparación detallada entre los tres jugadores de mejor desempeño y los tres jugadores con menor rendimiento en el equipo de Los Angeles Lakers, utilizando una variedad de métricas clave. 
-	**Comparación de Rendimiento:** muestra contrastes estadísticos esenciales como: asistencias, rebotes, robos, promedio de minutos jugados y promedio de puntos.

-	**Enfoque en Posiciones:** El dashboard permite identificar la posición específica de cada jugador comparado (C, PG, SF, etc.), proporcionando contexto sobre su rol en el equipo.


-	**Uso y Propósito:** El dashboard "Top 3" es una herramienta crucial para el cuerpo técnico y analistas, permitiéndoles enfocar esfuerzos en mejorar áreas específicas de los jugadores con menor desempeño y maximizar el impacto de los jugadores destacados. La comparación visual y estadística facilita la identificación rápida de patrones y decisiones estratégicas basadas en datos.

  
### 🎯 **Dashboard "Prospectos":**
Está diseñado para evaluar el desempeño de los jugadores jóvenes y promesas más relevantes del baloncesto en 2025. Proporciona un análisis detallado de sus estadísticas clave, porcentajes de efectividad e información general.
-	**Métricas y Estadísticas Clave:** Se destacan estadísticas importantes que reflejan el desempeño reciente de los prospectos, como: asistencias, rebotes, puntos por juego y robos. Además, también se incluyen porcentajes de tiros.

-	**Uso Estratégico:** Este dashboard no solo analiza las estadísticas básicas, sino que también sirve para evaluar fortalezas, debilidades y consistencia en el desempeño de los prospectos, ayudando a determinar qué jugadores podrían ser incorporados a la franquicia.


### 🔄🚫 **Dashboard "Renovaciones":**
Este dashboard brinda información sobre resultados obtenidos a través de un modelo ML de clasificación binaria RandomForest que tiene como variables predictoras todas las estadísticas de rendimiento de estos jugadores y como varibales a predecir, dos grupos de estadísticas clave (ofensivas y defensivas) que luego se comparan con valores comúnmente considerados en la NBA como criterios para decidir sobre renovación de contratos. Para entrenar el modelo se utilizó RandomForestClassifier de Scikit-Learn, dividiendo los datos en entrenamiento (80%) y prueba (20%). La precisión del modelo fue evaluada mediante classification_report y matriz de confusión.

- **Tabla plantel actual:** muestra los 21 jugadores del plantel actual, su edad, posición y una recomendación sobre si se recomienda o no la renovación de su contrato. Sobre la tabla se encuentra el enlace al notebook del modelo de clasificación en el cual se basa.
- **Gráfico de jugadores por posición:** es un gráfico de embudo que muestra la cantidad de jugadores de que dispone el plantel actual en cada posición.
-	**Filtro por renovación de contrato recomendada (Si-No):** en la esquina superior izquierda del dashboard se incluye un filtro (Si-No) que permite seleccionar a los jugadores a los que se recomienda renovar contrato o a los que no.
-	**Filtro por posición:** debajo del filtro de renovación, se incluye un filtro con las 5 posiciones de los jugadores del plantel, el cual permite filtrar los jugadores que corresponden a cada puesto.


### ✅ **Dashboard "Conclusiones":**
Presenta un resumen de las conclusiones obtenidas de todo el análisis (separadas por jugadores y renovaciones) en combinación con estrategias propuestas y recomendaciones. 

---
## 🖥️ **Stack Tecnológico y Herramientas**
<p align="center">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL%20Server-E34F26?style=for-the-badge&logo=microsoftsqlserver&logoColor=white" />
  <img src="https://img.shields.io/badge/Power%20BI-2C3E50?style=for-the-badge&logo=powerbi&logoColor=yellow" />
  <img src="https://img.shields.io/badge/VS%20Code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white" />
  <img src="https://img.shields.io/badge/Google%20Cloud-34A853?style=for-the-badge&logo=googlecloud&logoColor=white" />
  <img src="https://img.shields.io/badge/Lucid-FF5733?style=for-the-badge&logo=lucidchart&logoColor=white" />
</p>

---
## 📝 Conclusiones 


🏀📊 **Estadísticas del equipo:**

La cantidad de victorias, tanto de local como de visitante, supera a la cantidad de derrotas que obtuvieron en los mismos ámbitos. Sin embargo, la diferencia entre victorias y derrotas en casa es de un 19%. Consideramos necesario que el Crypto.Com Arena sea un lugar donde los Lakers se hagan fuertes y que la victoria del equipo que visita sea un trabajo arduo. Para ello debemos evaluar la cantidad de puntos realizados y recibidos, los rebotes ganados, los robos convertidos, los turnovers y las asistencias efectivas, con el objetivo de detectar los aspectos que requieren mayor atención y focalizar en ellos para aumentar su eficacia.  

La eficacia de rebotes defensivos es alta en comparación con la cantidad de puntos en contra, por lo tanto es indispensable incrementar la eficacia defensiva, reduciendo la cantidad de faltas y de pérdidas de posesión (TOV).

Los porcentajes de tiros de campo (FG%) y de triples (3P%) ubican al equipo en el top 10. Una franquicia que compite por el anillo debe estar en el top 3 o como mínimo en el top 5. El aumento en un punto de estos porcentajes (FG%: de 47 a 48, y 3P%: de 35 a 36), permitiría cumplir el objetivo mencionado previamente.

Los jugadores que más rotan y que por lo tanto cuentan con menos minutos en cancha, tienen promedios muy bajos de FG%. Considerando este punto decidimos enfocarnos en las métricas por posición resumidas a continaución.

🏀📍 **Estadisticas por posición:**

- PG: Tienen un promedio de entre 25 y 35 años, de los cuales solo dos jugadores superan la barrera de los 10 puntos por partido. Son los que más turnovers tienen y los que más faltas cometen junto con los SG ("primera línea" de defensa en los ataques rivales).


- SG: Son los  que más faltas cometen. Concentran la mayor cantidad de minutos y puntos en la franja etaria de los 20 a los 25 años. De estos jugadores, 4 superan el promedio de 10 puntos por partido. El destacado en el puesto es Austin Reaves, con un promedio de 13 puntos por partido y una eficacia en triples del 34%.


- SF: Son los que menos faltas y turnovers poseen. La estrella del equipo, Lebron James, promedia 30 puntos por partido. Quien lo sigue promedia 5 puntos por partido.


- PF: Tienen buena rotación, con 5 jugadores promediando los 10 puntos por partido. Sin embargo tienen un porcentaje alto de faltas y turnovers. 


- C: Tienen como jugador destacado a Anthony Davis, liderando en minutos y puntos (más de 22 por temporada) y luego lo siguen jugadores muy experimentados (Deandre Jordan con 33 años y Dwight Howard con 36). Los jovenes tienen alrededor de 5 a 10 minutos de juego. Presentan un promedio bajo de TOV y moderado de faltas.


🧠📈 **Estrategia Propuesta:**

- Mejorar en un punto FG% y 3P%

- Aumentar el promedio de puntos de aquellos jugadores que tienen menos minutos en cancha.

- Mejorar la eficacia defensiva. ↓ TOV y Faltas de PG

- Lebron James es el jugador estrella, pero está en sus últimos años de carrera, por lo tanto es esperable que haya una merma a nivel físico. Consideramos importante rodearlo de jugadores talentosos y jóvenes, que puedan continuar con el legado tanto de la franquicia como de su MVP.

⭐ Si se consideran estadísticas claves tanto defensivas como ofensivas tan solo 4 jugadores cumplen con los criterios de renovación establecidos. Mientras que, contemplando solo estsdísticas claves defensivas 11 jugadores en total cumplen con los criterios de renovación. Sugerimos tener en cuenta ambos criterios y evaluar por posición del jugador, ya que mantener una base amplia del plantel suele ser un aspecto clave y mantener solo 4 jugadores sería una renovación muy drásctica del equipo. 

---
## 💡 Recomendaciones

- Evaluar el progreso de los jugadores y realizar ajustes en el entrenamiento para optimizar el desempeño.  

- Evaluar la renovación de contrato para ciertos miembros del plantel. 

- Considerar incorporar nuevos talentos que se alinean con las necesidades del equipo mejorando el desempeño general tanto de local como de visitante.

