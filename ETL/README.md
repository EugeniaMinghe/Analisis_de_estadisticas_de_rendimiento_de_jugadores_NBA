## 📖 DICCIONARIO DE DATOS

Incluye información sobre el contenido de las columnas de las tablas (en formato .csv) más relevantes incluidas en la carpeta “ETL” del proyecto “Análisis de estadísticas de rendimiento de jugadores de la NBA”.
<p align='left'>
<img src="https://img.icons8.com/?size=100&id=N9rvnkaCrJ8h&format=png&color=000000" width="50"> 

**common\_player\_info\_final**

|**Nombre columna**|**Tipo**|**Descripción**|**Ejemplo**|
| :- | :- | :- | :- |
|player\_id|entero|Identificador único del jugador|76003|
|first\_name|string|Primer nombre del jugador|Kareem|
|last\_ name|string|Apellido del jugador|Abdul-Jabbar|
|full\_name|string|Nombre y apellido del jugador|Kareem Abdul-Jabbar|
|birthdate|date|Fecha de nacimiento del jugador (YYYY-MM-DD)|1947-04-16|
|school|string|<p>Universidad o instituto donde jugó el jugador antes de llegar a la NBA </p><p></p>|UCLA|
|country|string|País de origen del jugador|USA|
|last\_affiliation|string|Última afiliación antes de ingresar a la NBA (universidad o equipo internacional y país al que pertenece la universidad o equipo)|UCLA/USA|
|height|string|Altura del jugador en pies y pulgadas (ejemplo: 7-2 significa 7 pies 2 pulgadas|7-2|
|weight|float|Peso del jugador en libras|225\.0|
|season\_exp|float|Años de experiencia del jugador en la NBA (temporadas jugadas)|20\.0|
|jersey|entero|Número de camiseta del jugador|33|
|position|string|Posición en la que se desempeña el jugador|Center|
|rosterstatus|String (boolean)|Estado del jugador (activo o inactivo)|Inactive|
|games\_played\_current\_season\_flag|String (boolean)|Indica si el jugador ha jugado en la temporada actual (Y para sí, N para no)|N|
|team\_id|entero|Identificador único del equipo actual o el último equipo del que formó parte el jugador|1610612747|
|from\_year|entero|Año en el que el jugador comenzó su carrera en la NBA|1969|
|to\_year|entero|Año en que terminó su carrera en la NBA (si está activo, es el último año registrado)|1988|
|dleague\_flag|String (boolean)|Indica si el jugador ha jugado en la D-league ahora llamada G-League.  (Y para sí, N para no). La G-league es un a liga de desarrollo o preparación para la NBA.|N|
|nba\_flag|String (boolean)|Indica si el jugador ha sido parte de la NBA (Y para sí, N para no)|Y|
|games\_played\_flag |String (boolean)|Indica si el jugador ha jugado al menos un partido en la NBA (Y para sí, N para no).|Y|
|draft\_year|entero|<p>Año en que el jugador fue seleccionado en el Draft de la NBA. </p><p></p><p>El draft de la NBA es un evento anual en el que los equipos de la liga seleccionan a jugadores jóvenes para unirse a sus filas.</p>|1969|
|draft\_round|entero (string en el caso de undrafted)|Ronda del Draft en la que fue seleccionado el jugador (Undrafted si no fue elegido)|1|
|draft\_number|entero (string en el caso de undrafted)|Número de orden en que el jugador fue seleccionado en el Draft (Undrafted si no fue elegido).|2|
|greatest\_75\_flag|String (boolean)|Indica si el jugador fue seleccionado como uno de los 75 mejores jugadores de la historia de la NBA (Y para sí, N para no).|Y|
</p>

<p align='left'>
<img src="https://img.icons8.com/?size=100&id=AeDXKfJw3nCU&format=png&color=000000" width="50">

**draft\_history\_final**

|<a name="_hlk192831600"></a>**Nombre columna**|**Tipo**|**Descripción**|**Ejemplo**|
| :- | :- | :- | :- |
|player\_id|entero|Identificador único del jugador|78497|
|full\_name|string|Nombre y apellido del jugador|Jerry West|
|season|entero|Año en que el jugador fue seleccionado en el Draft de la NBA.|1960|
|round\_number|entero|Ronda del Draft en la que fue seleccionado el jugador|1|
|round\_pick|entero|Número de orden de selección dentro de la ronda en la que fue elegido.|2|
|overall\_pick|string|Número total de orden de selección en todo el Draft (posición global).|2|
|draft\_type|string|Tipo de Draft (ejemplo: *Draft*, *Supplemental Draft*).|Draft|
|Team\_id|entero|Identificador del equipo que seleccionó al jugador|1610612747|
|team\_city|string|Ciudad del equipo que seleccionó al jugador|Los Ángeles|
|team\_name|string|Nombre del equipo que seleccionó al jugador|Lakers|
|team\_abbreviation|String|Abreviación del nombre del equipo que seleccionó al jugador (ejemplo: LAL para Los Ángeles Lakers)|LAL|
|organization|string|Institución donde jugó el jugador antes del Draft (ejemplo: universidad o equipo internacional)|West Virginia|
|Organization\_type|string|Tipo de institución de donde proviene el jugador (*College/University*, *International*, *High School*)|College/University|
|player\_profile\_flag|boolean|Indicador de si el jugador tiene un perfil registrado en la base de datos (*1* para sí, *0* para no)|1|
</p>


<p align='left'>
<img src="https://img.icons8.com/?size=100&id=lNNn02YUuPYL&format=png&color=000000" width='50'>

**games\_lakers\_tres\_temporadas**

|**Nombre columna**|**Tipo**|**Descripción**|**Ejemplo**|
| :- | :- | :- | :- |
|season\_id|entero|Identificador único de la temporada en la que se jugó el partido|42019|
|<a name="_hlk192781773"></a>team\_id\_home|entero|Identificador único del equipo local|1610612747|
|team\_abbreviation\_home|string|Abreviatura del nombre del equipo local|LAL|
|team\_name\_home|string|Nombre completo del equipo local|Los ángeles Lakers|
|game\_id|entero|Identificador único del partido|41900402|
|game\_date|fecha|Fecha en que se jugó el partido (YYYY-MM-DD)|2020-10-02|
|match\_up\_home|string|Representación del enfrentamiento desde la perspectiva del equipo local (LAL vs. MIA indica que los Lakers jugaron contra Miami de local)|LAL vs. MIA|
|wl\_home|string|Resultado del equipo local (W para victoria, L para derrota)|W|
|min|entero|Minutos totales jugados en el partido|240|
|fgm\_home|float|Tiros de campo encestados por el equipo local|49\.0|
|fga\_home|float|Tiros de campo intentados por el equipo local|97\.0|
|fg\_pct\_home|float|Porcentaje de tiros de campo acertados por el equipo local (0 = 0%  1 = 100%)|0\.505|
|fg3m\_home|float|Triples encestados por el equipo local|16\.0|
|fg3a\_home |float|Triples intentados por el equipo local|47\.0|
|fg3\_pct\_home|float|Porcentaje de triples acertados por el equipo local (0 = 0%  1 = 100%)|0\.34|
|ftm\_home|float|Tiros libres encestados por el equipo local|10\.0|
|fta\_home|float|Tiros libres intentados por el equipo local|17\.0|
|ft\_pct\_home |float|Porcentaje de tiros libres acertados por el equipo local (0 = 0%  1 = 100%)|0\.588|
|oreb\_home|float|Rebotes ofensivos del equipo local|16\.0|
|dreb\_home|float|Rebotes defensivos del equipo local|28\.0|
|reb\_home|float|Rebotes totales del equipo local|44\.0|
|ast\_home|float|Asistencias del equipo local|32\.0|
|stl\_home|float|Robos del equipo local|6\.0|
|blk\_home|float|Bloqueos del equipo local|3\.0|
|tov\_home|float|Pérdidas de balón (turnovers) del equipo local|9\.0|
|pf\_home|float|Faltas personales cometidas por el equipo local|26\.0|
|pts\_home|float|Puntos anotados por el equipo local|124\.0|
|plus\_minus\_home|Entero|Diferencia de puntos (puntos del local – puntos del visitante)|10|
|video\_available\_home|boolean|Indicador de disponibilidad de video del partido (1 si hay video, 0 si no)|1|
|||||
|team\_id\_away|entero|Identificador único del equipo visitante|1610612748|
|team\_abbreviation\_away|string|Abreviatura del nombre del equipo visitante|MIA|
|team\_name\_away|string|Nombre completo del equipo visitante|Miami Heat|
|match\_up\_away|string|Representación del enfrentamiento desde la perspectiva del equipo visitante (MIA vs. LAL indica que los Miami jugaron contra los Lakers de visitante)|MIA @ LAL|
|wl\_away|string|Resultado del equipo visitante (W para victoria, L para derrota)|L|
|fgm\_away|float|Tiros de campo encestados por el equipo visitante|36\.0|
|fga\_away|float|Tiros de campo intentados por el equipo visitante|71\.0|
|fg\_pct\_away|float|Porcentaje de tiros de campo acertados por el equipo visitante (0 = 0%  1 = 100%)|0\.407|
|fg3m\_away|float|Triples encestados por el equipo visitante|11\.0|
|fg3a\_away|float|Triples intentados por el equipo visitante|27\.0|
|fg3\_pct\_away|float|Porcentaje de triples acertados por el equipo visitante (0 = 0%  1 = 100%)|0\.34|
|ftm\_away|float|Tiros libres encestados por el equipo visitante|31\.0|
|fta\_away|float|Tiros libres intentados por el equipo visitante|34\.0|
|ft\_pct\_away|float|Porcentaje de tiros libres acertados por el equipo visitante (0 = 0%  1 = 100%)|0\.912|
|oreb\_away|float|Rebotes ofensivos del equipo visitante|6\.0|
|dreb\_away|float|Rebotes defensivos del equipo visitante|31\.0|
|reb\_away|float|Rebotes totales del equipo visitante|37\.0|
|ast\_away|float|Asistencias del equipo visitante|29\.0|
|stl\_away|float|Robos del equipo visitante|2\.0|
|blk\_away|float|Bloqueos del equipo visitante|1\.0|
|tov\_away|float|Pérdidas de balón (turnovers) del equipo visitante|10\.0|
|pf\_away|float|Faltas personales cometidas por el equipo visitante|23\.0|
|pts\_away|float|Puntos anotados por el equipo visitante|114\.0|
|plus\_minus\_away|Entero|Diferencia de puntos (puntos del local – puntos del visitante)|-10|
|video\_available\_away|boolean|Indicador de disponibilidad de video del partido (1 si hay video, 0 si no)|1|
</p>

<p align='left'>
<img src="https://img.icons8.com/?size=100&id=WrbqKCA5iaWe&format=png&color=000000" width='50'>

**line\_scored\_filtered**

|**Nombre columna**|**Tipo**|**Descripción**|**Ejemplo**|
| :- | :- | :- | :- |
|game\_date\_est|fecha|Fecha del partido (YYYY-MM-DD)|2020-10-02|
|game\_sequence|float|No queda claro a que se refiere esta columna|2\.0|
|game\_id|entero|Identificador único del partido|41900402|
|team\_id\_home|entero|Identificador único del equipo local|1610612748|
|team\_wins\_losses\_home |string|Registro acumulativo por temporada de victorias y derrotas del equipo local|0-2|
|pts\_qtr1\_home a pts\_ot10\_home |float|Puntos del equipo local en cada cuarto y tiempo extra (overtime)|23\.0|
|pts\_home|float|Puntos totales del equipo local|114\.0|
|team\_id\_away|entero|Identificador único del equipo visitante|1610612747|
|team\_wins\_losses\_away|string|Registro acumulativo por temporada de victorias y derrotas del equipo visitante|2-0|
|pts\_qtr1\_away a pts\_ot10\_away|float|Puntos del equipo visitante en cada cuarto y tiempo extra (overtime)|39\.0|
|pts\_away|float|Puntos totales del equipo visitante|124\.0|
</p>

<p align='left'>
<img src="https://img.icons8.com/?size=100&id=lsxgez2i6JlE&format=png&color=000000" width='50'>

**other\_stats\_filtered**

|**Nombre columna**|**Tipo**|**Descripción**|**Ejemplo**|
| :- | :- | :- | :- |
|game\_id|entero|Identificador único del partido|41900402|
|league\_id |entero|Identificador único de la liga en la que se juega el partido|0|
|team\_id\_home|entero|Identificador único del equipo que juega como local|1610612747|
|team\_id\_away |entero|Identificador único del equipo que juega como visitante|1610612748|
|pts\_paint\_home|entero|Puntos anotados en la pintura por el equipo local (zona cercana al aro)|46|
|pts\_paint\_away|entero|Puntos anotados en la pintura por el equipo visitante|14|
|pts\_2nd\_chance\_home|entero|Puntos obtenidos por el equipo local en segundas oportunidades tras un rebote ofensivo|21|
|pts\_2nd\_chance\_away|entero|Puntos obtenidos por el equipo visitante en segundas oportunidades tras un rebote ofensivo|15|
|pts\_fb\_home|entero|Puntos del equipo local en jugadas de contraataque (fast break)|9|
|pts\_fb\_away|entero|Puntos del equipo visitante en jugadas de contraataque (fast break)|11|
|pts\_off\_to\_home|entero|Puntos del equipo local obtenidos tras pérdidas del rival|18|
|pts\_off\_to\_away|entero|Puntos del equipo visitante obtenidos tras pérdidas del rival|15|
|largest\_lead\_home|entero|Mayor ventaja obtenida por el equipo local durante el partido|18|
|largest\_lead\_away|entero|Mayor ventaja obtenida por el equipo visitante durante el partido|8|
|lead\_changes|entero|Cantidad de veces que el liderazgo del partido cambió de un equipo al otro|4|
|times\_tied|entero|Cantidad de veces que el partido estuvo empatado en el marcador|6|
|team\_turnovers\_home|entero|Cantidad de pérdidas de balón forzadas por el equipo local al rival|2|
|team\_turnovers\_away|entero|Cantidad de pérdidas de balón forzadas por el equipo visitante al rival|3|
|total\_turnovers\_home|entero|Total de pérdidas de balón cometidas por el equipo local|5|
|total\_turnovers\_away|entero|Total de pérdidas de balón cometidas por el equipo visitante|4|
|team\_rebounds\_home|entero|Total de rebotes capturados por el equipo local (defensivos + ofensivos)|20|
|team\_rebounds\_away|entero|Total de rebotes capturados por el equipo visitante (defensivos + ofensivos)|15|
</p>

📎**COMENTARIOS:**

- Muchos valores de estas tablas que están en formato float podrían simplificarse a enteros, como rebotes, puntos, tiros libres etc.
- Muchos valores que están en formato Sting cumplen función booleana, como por ejemplo: active-inactive, yes-no, etc.
- En la tabla other\_stats\_filtered, el identificador único de la liga en la que se juega el partido siempre es cero y siempre es NBA, podría quitarse esta columna.
- En la tabla line\_scored\_filtered, no queda claro a que se refiere la columna game\_sequence por lo que no tendrá valor para el análisis y se recomienda eliminarla.
