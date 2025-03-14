-- Comando de uso de la base de datos creada
USE GameTimeStats;


-- Cargar los datos desde el archivo CSV a la tabla Teams
BULK INSERT Teams
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\info_teams.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from Teams; 

-- Cargar los datos desde el archivo CSV a la tabla InfoPlayers
BULK INSERT InfoPlayers
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\common_player_info_final.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from InfoPlayers; 

-- Cargar los datos desde el archivo CSV a la tabla Players
BULK INSERT Players
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\players_filtered.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from Players; 

-- Cargar los datos desde el archivo CSV a la tabla PlayersLAL
BULK INSERT PlayersLAL
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\players_Lakers.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from PlayersLAL; 

-- Cargar los datos desde el archivo CSV a la tabla DraftHistory
BULK INSERT DraftHistory
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\draft_history_final.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from DraftHistory; 

-- Cargar los datos desde el archivo CSV a la tabla GamesLakers
BULK INSERT GamesLakers
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\games_lakers_reordenado.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from GamesLakers; 

-- Cargar los datos desde el archivo CSV a la tabla LineScored
BULK INSERT LineScored
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\line_scored_filtered.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from LineScored; 

-- Cargar los datos desde el archivo CSV a la tabla OtherStats
BULK INSERT OtherStats
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\other_stats_filtered.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from OtherStats; 

	-- Cargar los datos desde el archivo CSV a la tabla PlayByPlay
BULK INSERT PlayByPlay
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\play_by_play_filtered.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '65001',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from PlayByPlay; 

	-- Cargar los datos desde el archivo CSV a la tabla PlayerStatistics
BULK INSERT PlayerStatistics
FROM 'C:\Users\Eugenia\Downloads\ProyectoFinal\ETL\lakers_21_24.csv'
WITH (
    FIRSTROW = 2,             -- Para omitir la fila de encabezado
    FIELDTERMINATOR = ',',    -- Separador de columnas (en este caso, coma)
    ROWTERMINATOR = '\n',     -- Separador de filas (nueva línea)
    KEEPIDENTITY,             -- Mantener los IDs originales del CSV
    CODEPAGE = '1252',       -- Soporte para UTF-8
    TABLOCK                  -- Aumenta el rendimiento al bloquear la tabla
);

Select * from PlayerStatistics; 


