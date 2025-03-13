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

--Crear la tabla Players
CREATE TABLE Players (
PlayerID INT PRIMARY KEY, --No usé el IDENTITY (1,1) porque quiero que tome los datos del csv
FullName NVARCHAR (150) NOT NULL,
FirstName NVARCHAR (150) NOT NULL,
LastName NVARCHAR (150) NOT NULL
);

-- Crear la tabla PlayersLAL
CREATE TABLE PlayersLAL (
    PlayerID INT,
	FullName NVARCHAR (150) NOT NULL,
	FirstName NVARCHAR (150) NOT NULL,
	LastName NVARCHAR (150) NOT NULL 
	FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
);

-- Crear la tabla Teams
CREATE TABLE Teams (
	TeamID INT PRIMARY KEY,
	FullName NVARCHAR (150) NOT NULL, 
	Abbreviation NVARCHAR (150), 
	Nickname NVARCHAR (150), 
	City NVARCHAR (100) NOT NULL, 
	StateName NVARCHAR (150) NOT NULL, 
	FoundationYear INT
);

-- Crear la tabla InfoPlayers
CREATE TABLE InfoPlayers (
    PlayerID INT,
    FirstName NVARCHAR (150) NOT NULL,
	LastName NVARCHAR (150) NOT NULL, 
	FullName NVARCHAR (150) NOT NULL,
    Birthday DATE NOT NULL,
	School NVARCHAR (150), 
	Country NVARCHAR (150),
	LastAffilation NVARCHAR (150) NOT NULL, 
	Height NVARCHAR (10) NOT NULL, -- Porque está en pies seguido de guión y las pulgadas, lo convertimos si lo necesitamos
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
	FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
	FOREIGN KEY (TeamID) REFERENCES Teams(TeamID),
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
	FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
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
	FOREIGN KEY (Player1ID) REFERENCES Players(PlayerID),
	FOREIGN KEY (Player2ID) REFERENCES Players(PlayerID),
	FOREIGN KEY (Player3ID) REFERENCES Players(PlayerID),
	);
