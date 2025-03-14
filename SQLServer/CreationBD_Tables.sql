-- Crear la base de datos
CREATE DATABASE GameTimeStats
ON
(
NAME="GameTimeStatsDB_Data", 
FILENAME= "C:\SQL_DB\GameTimeStats_Data.mdf",
SIZE=100MB, 
MAXSIZE= 1GB, 
FILEGROWTH= 10MB
)
--Crear la base de registro
LOG ON 
(
NAME="ProyectoFinal_DB_Log", 
FILENAME= "C:\SQL_DB\GameTimeStats_Data.ldf",
SIZE=50MB, 
MAXSIZE= 500MB, 
FILEGROWTH= 5MB
)
; 
-- Comando de uso de la base de datos creada
USE GameTimeStats;

-- Crear la tabla Teams
CREATE TABLE Teams (
	TeamID INT PRIMARY KEY, --No us� el IDENTITY (1,1) porque quiero que tome los datos del csv
	FullName NVARCHAR (150) NOT NULL, 
	Abbreviation NVARCHAR (150), 
	Nickname NVARCHAR (150), 
	City NVARCHAR (100) NOT NULL, 
	StateName NVARCHAR (150) NOT NULL, 
	FoundationYear INT
);

-- Crear la tabla InfoPlayers
CREATE TABLE InfoPlayers (
    PlayerID INT PRIMARY KEY, --No us� el IDENTITY (1,1) porque quiero que tome los datos del csv
    FirstName NVARCHAR (150) NOT NULL,
	LastName NVARCHAR (150) NOT NULL, 
	FullName NVARCHAR (150) NOT NULL,
    Birthday DATE NOT NULL,
	School NVARCHAR (150), 
	Country NVARCHAR (150),
	LastAffilation NVARCHAR (150) NOT NULL, 
	Height NVARCHAR (10) NOT NULL, -- Porque est� en pies seguido de gui�n y las pulgadas, lo convertimos si lo necesitamos
	PlayerWeight DECIMAL (5,2) NOT NULL, 
	SeasonExp NVARCHAR (50) NOT NULL, 
	Jersery NVARCHAR (100), 
	Position NVARCHAR (100) NOT NULL, 
	RosterStatus NVARCHAR (150) NOT NULL,
	GamePlayedCurrentSeasonFlag  NVARCHAR (150),
	TeamID INT, 	
	FromYear INT NOT NULL, 
	ToYear INT NOT NULL,
	DleagueFlag NVARCHAR (10),
	NBAFlag NVARCHAR (10),
	GamesPlayedFlag NVARCHAR (10),
	DraftYear NVARCHAR (50),
	DraftRound NVARCHAR (50),
	DraftNumber NVARCHAR (50),
	Greatest75Flag NVARCHAR (10)
	FOREIGN KEY (TeamID) REFERENCES Teams(TeamID),
);

--Crear la tabla Players
CREATE TABLE Players (
PlayerID INT,
FullName NVARCHAR (150) NOT NULL,
FirstName NVARCHAR (150) NOT NULL,
LastName NVARCHAR (150) NOT NULL
FOREIGN KEY (PlayerID) REFERENCES InfoPlayers(PlayerID),
);

-- Crear la tabla PlayersLAL
CREATE TABLE PlayersLAL (
    PlayerID INT,
	FullName NVARCHAR (150) NOT NULL,
	FirstName NVARCHAR (150) NOT NULL,
	LastName NVARCHAR (150) NOT NULL 
	FOREIGN KEY (PlayerID) REFERENCES InfoPlayers(PlayerID),
);

-- Crear la tabla DraftHistory
CREATE TABLE DraftHistory (
	PlayerId INT,
	FullName NVARCHAR (150) NOT NULL,
	Season INT NOT NULL, 
	RoundNumber INT NOT NULL, 
	RoundPick INT NOT NULL, 
	OveralPick INT NOT NULL, 
	DraftType NVARCHAR (150) NOT NULL, 
	TeamID INT, 
	Organization NVARCHAR(150) NOT NULL, 
	OrganizationType NVARCHAR(150) NOT NULL, 
	PlayerProfileFlag INT NOT NULL
	FOREIGN KEY (PlayerID) REFERENCES InfoPlayers(PlayerID),
	FOREIGN KEY (TeamID) REFERENCES Teams(TeamID),
);

-- Crear la tabla GamesLakers
CREATE TABLE GamesLakers (
	 GameID INT PRIMARY KEY, 
	 SeasonID INT,
	 HomeTeamID INT,
	 HomeTeamAbbreviation NVARCHAR(150), 
	 HomeTeamName NVARCHAR(150), 
	 GameDate DATE NOT NULL, 
	 MatchupHome NVARCHAR(150) NOT NULL, 
	 WlHome NVARCHAR(10) NOT NULL,
	 GameMin INT NOT NULL, 
	 FgmHome NVARCHAR(50) NOT NULL, 
	 FgaHome NVARCHAR(50) NOT NULL,
	 FgPctHome NVARCHAR(50) NOT NULL, 
	 Fg3mHome NVARCHAR(50) NOT NULL,
	 Fg3aHome NVARCHAR(50) NOT NULL,
	 Fg3PctHome NVARCHAR(50) NOT NULL,
	 FtmHome NVARCHAR(50) NOT NULL,
	 FtaHome NVARCHAR(50) NOT NULL,
	 FtPctHome NVARCHAR(50) NOT NULL,
	 OrebHome NVARCHAR(50) NOT NULL,
	 DrebHome NVARCHAR(50) NOT NULL,
	 RebHome NVARCHAR(50) NOT NULL,
	 AstHome NVARCHAR(50) NOT NULL,
	 StlHome NVARCHAR(50) NOT NULL,
	 BlkHome NVARCHAR(50) NOT NULL,
	 TovHome NVARCHAR(50) NOT NULL,
	 PfHome NVARCHAR(50) NOT NULL,
	 PtsHome NVARCHAR(50) NOT NULL,
	 PlusMinusHome INT NOT NULL,
	 VideoAvailableHome INT NOT NULL,
	 AwayTeamID INT,
	 AwayTeamAbbreviation NVARCHAR(150), 
	 AwayTeamName NVARCHAR(150), 
	 MatchupAway NVARCHAR(150) NOT NULL, 
	 WlAway NVARCHAR(10) NOT NULL,
	 FgmAway NVARCHAR(50) NOT NULL,
	 FgaAway NVARCHAR(50) NOT NULL,
	 FgPctAway NVARCHAR(50) NOT NULL, 
	 Fg3mAway NVARCHAR(50) NOT NULL,
	 Fg3aAway NVARCHAR(50) NOT NULL,
	 Fg3PctAway NVARCHAR(50) NOT NULL,
	 FtmAway NVARCHAR(50) NOT NULL,
	 FtaAway NVARCHAR(50) NOT NULL,
	 FtPctAway NVARCHAR(50) NOT NULL,
	 OrebAway NVARCHAR(50) NOT NULL,
	 DrebAway NVARCHAR(50) NOT NULL,
	 RebAway NVARCHAR(50) NOT NULL,
	 AstAway NVARCHAR(50) NOT NULL,
	 StlAway NVARCHAR(50) NOT NULL,
	 BlkAway NVARCHAR(50) NOT NULL,
	 TovAway NVARCHAR(50) NOT NULL,
	 PfAway NVARCHAR(50) NOT NULL,
	 PtsAway NVARCHAR(50) NOT NULL,
	 PlusMinusAway INT NOT NULL,
	 VideoAvailableAway INT NOT NULL,
	 SeasonType NVARCHAR (150) NOT NULL
	 FOREIGN KEY (HomeTeamID) REFERENCES Teams(TeamID),
	 FOREIGN KEY (AwayTeamID) REFERENCES Teams(TeamID),
);

-- Crear la tabla LineScored
CREATE TABLE LineScored (
	GameDateEst DATE NOT NULL, 
	GameSequence NVARCHAR(10) NOT NULL, 
	GameID INT, 
	HomeTeamID INT,
	TeamWinsLossesHome NVARCHAR(10) NOT NULL,
	PtsQtr1Home NVARCHAR(10) NOT NULL,
	PtsQtr2Home NVARCHAR(10) NOT NULL,
	PtsQtr3Home NVARCHAR(10) NOT NULL,
	PtsQtr4Home NVARCHAR(10) NOT NULL,
	PtsOt1Home NVARCHAR(10) NOT NULL,
	PtsOt2Home NVARCHAR(10) NOT NULL,
	PtsOt3Home NVARCHAR(10) NOT NULL,
	PtsOt4Home NVARCHAR(10) NOT NULL,
	PtsOt5Home NVARCHAR(10) NOT NULL,
	PtsOt6Home NVARCHAR(10) NOT NULL,
	PtsOt7Home NVARCHAR(10) NOT NULL,
	PtsOt8Home NVARCHAR(10) NOT NULL,
	PtsOt9Home NVARCHAR(10) NOT NULL,
	PtsOt10Home NVARCHAR(10) NOT NULL,
	PtsHome NVARCHAR(10) NOT NULL,
	AwayTeamID INT,
	TeamWinsLossesAway NVARCHAR(10) NOT NULL,
	PtsQtr1Away NVARCHAR(10) NOT NULL,
	PtsQtr2Away NVARCHAR(10) NOT NULL,
	PtsQtr3Away NVARCHAR(10) NOT NULL,
	PtsQtr4Away NVARCHAR(10) NOT NULL,
	PtsOt1Away NVARCHAR(10) NOT NULL,
	PtsOt2Away NVARCHAR(10) NOT NULL,
	PtsOt3Away NVARCHAR(10) NOT NULL,
	PtsOt4Away NVARCHAR(10) NOT NULL,
	PtsOt5Away NVARCHAR(10) NOT NULL,
	PtsOt6Away NVARCHAR(10) NOT NULL,
	PtsOt7Away NVARCHAR(10) NOT NULL,
	PtsOt8Away NVARCHAR(10) NOT NULL,
	PtsOt9Away NVARCHAR(10) NOT NULL,
	PtsOt10Away NVARCHAR(10) NOT NULL,
	PtsAway NVARCHAR(10) NOT NULL
	FOREIGN KEY (GameID) REFERENCES GamesLakers(GameID),
	FOREIGN KEY (HomeTeamID) REFERENCES Teams(TeamID),
	FOREIGN KEY (AwayTeamID) REFERENCES Teams(TeamID),
);

-- Crear la tabla OtherStats
CREATE TABLE OtherStats (
	GameID INT,
	LeagueID INT, 
	HomeTeamID INT,
	PtsPaintHome NVARCHAR(10) NOT NULL,
	Pts2ndChanceHome NVARCHAR(10) NOT NULL,
	PtsFbHome NVARCHAR(10) NOT NULL,
	LargestLeadHome NVARCHAR(10) NOT NULL,
	LeadChanges NVARCHAR(10) NOT NULL,
	TimesTied NVARCHAR(10) NOT NULL,
	TeamTurnoversHome NVARCHAR(10) NOT NULL,
	TotalTurnoversHome NVARCHAR(10) NOT NULL,
	TeamReboundsHome NVARCHAR(10) NOT NULL,
	PtsOffToHome NVARCHAR(10) NOT NULL,
	AwayTeamID INT,
	PtsPaintAway NVARCHAR(10) NOT NULL,
	Pts2ndChanceAway NVARCHAR(10) NOT NULL,
	PtsFbAway NVARCHAR(10) NOT NULL,
	LargestLeadAway NVARCHAR(10) NOT NULL,
	TeamTurnoversAway NVARCHAR(10) NOT NULL,
	TotalTurnoversAway NVARCHAR(10) NOT NULL,
	TeamReboundsAway NVARCHAR(10) NOT NULL,
	PtsOffToAway NVARCHAR(10) NOT NULL,
	FOREIGN KEY (GameID) REFERENCES GamesLakers(GameID),
	FOREIGN KEY (HomeTeamID) REFERENCES Teams(TeamID),
	FOREIGN KEY (AwayTeamID) REFERENCES Teams(TeamID),
);

-- Crear la tabla PlayByPlay
CREATE TABLE PlayByPlay (
	GameID INT,
	EventNum NVARCHAR(10) NOT NULL, 
	EventMsgType NVARCHAR(10) NOT NULL,
	EventMsgActionType NVARCHAR(10) NOT NULL,
	GamePeriod INT NOT NULL,
	WcTimeString TIME NOT NULL,
	PcTimeString TIME NOT NULL,
	Score NVARCHAR(10),
	ScoreMargin NVARCHAR(10),
	Person1Type NVARCHAR(10),
	Player1ID INT, 
	Person2Type NVARCHAR(10),
	Player2ID INT, 
	Person3Type NVARCHAR(10),
	Player3ID INT, 
	VideoAvailableFlag INT
	FOREIGN KEY (GameID) REFERENCES GamesLakers(GameID),
	FOREIGN KEY (Player1ID) REFERENCES InfoPlayers(PlayerID),
	FOREIGN KEY (Player2ID) REFERENCES InfoPlayers(PlayerID),
	FOREIGN KEY (Player3ID) REFERENCES InfoPlayers(PlayerID),
	);

-- Crear la tabla PlayerStatistics
CREATE TABLE PlayerStatistics (
	Rk INT,
	FullName NVARCHAR (150) NOT NULL,
	Pos NVARCHAR(10) NOT NULL,
	Age INT NOT NULL,
	TeamAbbreviation NVARCHAR(10) NOT NULL,
	G INT NOT NULL,
	Gs INT NOT NULL,
	Mp FLOAT NOT NULL,
	Fg FLOAT NOT NULL,
	Fga FLOAT NOT NULL,
	FgpPercent FLOAT NOT NULL,
	P3 FLOAT NOT NULL,
	PA3 FLOAT NOT NULL,
	P3Percent FLOAT NOT NULL,
	P2 FLOAT NOT NULL,
	PA2 FLOAT NOT NULL,
	P2Percent FLOAT NOT NULL,
	EfgPercent FLOAT NOT NULL,
	Ft FLOAT NOT NULL,
	Fta FLOAT NOT NULL,
	FtPercent FLOAT NOT NULL,
	Orb FLOAT NOT NULL,
	Drb FLOAT NOT NULL,
	Trb FLOAT NOT NULL,
	Ast FLOAT NOT NULL,
	Stl FLOAT NOT NULL,
	Blk FLOAT NOT NULL,
	Tov FLOAT NOT NULL,
	Pf FLOAT NOT NULL,
	Pts FLOAT NOT NULL,
	TypeSeason NVARCHAR (150) NOT NULL,
	SeasonYear NVARCHAR (150) NOT NULL
); 

--Agregar PlayerID a la tabla
ALTER TABLE PlayerStatistics
ADD PlayerID INT;

SELECT * FROM PlayerStatistics

--Completar la columna con los valores de PlayerID de la tabla Players e InfoPlayers usando el FullName como v�nculo para las coincidencias
UPDATE PS
SET PS.PlayerID = P.PlayerID
FROM PlayerStatistics AS PS
JOIN Players AS P ON PS.FullName = P.FullName;

SELECT * FROM PlayerStatistics;

UPDATE PS
SET PS.PlayerID = I.PlayerID
FROM PlayerStatistics AS PS
JOIN InfoPlayers AS I ON PS.FullName = I.FullName;

SELECT * FROM PlayerStatistics;

--Completar los valores nulos de PlayerID en Player Statistics
--Primero obtengo el �ltimo valor de PlayerID de Players
DECLARE @LastPlayerID INT;

SELECT @LastPlayerID = MAX(PlayerID)
FROM Players;

--Actualizar los PlayerID nulos en PlayerStatistics
WITH CTE AS (   --creamos una tabla temporal
    SELECT *,   -- selecciona todas las columnas y filtra los registros con PlayerID NULL usando la condici�n del WHERE
           ROW_NUMBER() OVER (ORDER BY FullName) + 3500000 AS NewPlayerID -- genera columna adicional que asigna n�meros consecutivos a cada fila siguiente el order del FullName
    FROM PlayerStatistics
    WHERE PlayerID IS NULL
)
UPDATE PlayerStatistics -- actualiza filas seleccionadas en el paso previo
SET PlayerID = CTE.NewPlayerID -- asigna un valor al PlayerID NULL 
FROM PlayerStatistics ps
JOIN CTE
    ON ps.PlayerID IS NULL
    AND ps.FullName = CTE.FullName;

SELECT * FROM PlayerStatistics;

ALTER TABLE PlayerStatistics
ADD FirstName NVARCHAR(150),
    LastName NVARCHAR(150);

SELECT * FROM PlayerStatistics;

--Para agregar los nuevos PlayersIDs a la tabla InfoPlayers y que haya alg�n dato m�s
UPDATE PlayerStatistics
SET FirstName = LEFT(FullName, CHARINDEX(' ', FullName) - 1),
    LastName = LTRIM(RIGHT(FullName, LEN(FullName) - CHARINDEX(' ', FullName)));

SELECT * FROM PlayerStatistics;

--Es necesario permiten que ciertas columnas sean nulas que antes no lo eran porque no est�n los datos
ALTER TABLE InfoPlayers
ALTER COLUMN Birthday DATE NULL

ALTER TABLE InfoPlayers
ALTER COLUMN LastAffilation NVARCHAR (150) NULL

ALTER TABLE InfoPlayers
ALTER COLUMN Height NVARCHAR (10) NULL

ALTER TABLE InfoPlayers
ALTER COLUMN PlayerWeight DECIMAL (5,2) NULL

ALTER TABLE InfoPlayers
ALTER COLUMN SeasonExp NVARCHAR (50) NULL

ALTER TABLE InfoPlayers
ALTER COLUMN Position NVARCHAR (100) NULL

ALTER TABLE InfoPlayers
ALTER COLUMN RosterStatus NVARCHAR (150) NULL

ALTER TABLE InfoPlayers
ALTER COLUMN FromYear INT NULL

ALTER TABLE InfoPlayers
ALTER COLUMN ToYear INT NULL;

--Inserto los datos de los PlayerIDs diferentes a la tabla InfoPlayers
INSERT INTO InfoPlayers (PlayerID, FullName, FirstName, LastName)
SELECT DISTINCT 
    ps.PlayerID,
    ps.FullName,
    ps.FirstName,
    ps.LastName
FROM 
    PlayerStatistics ps
LEFT JOIN 
    InfoPlayers ip ON ps.PlayerID = ip.PlayerID
WHERE 
    ip.PlayerID IS NULL;

SELECT * FROM InfoPlayers;

--Completo el TeamId porque todos son de los Lakers 

UPDATE InfoPlayers
SET TeamID = 1610612747
WHERE TeamID IS NULL;

SELECT * FROM InfoPlayers;

--Puedo vincular PlayStatistics mediante una FK con InfoPlayers y agregarla al esquema relacional
ALTER TABLE PlayerStatistics
ADD CONSTRAINT FK_PlayerID
FOREIGN KEY (PlayerID) REFERENCES InfoPlayers(PlayerID);

SELECT*FROM PlayerStatistics;

--Elimino las columnas FirstName, LastName y FullName porque ya est�n en la tabla InfoPlayers

ALTER TABLE PlayerStatistics
DROP COLUMN FirstName, LastName, FullName;

SELECT*FROM PlayerStatistics;