REM   Script: Final Hand in
REM   final hand in evon

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
    CONSTRAINT Crew_Captain_fk FOREIGN KEY (CaptainID) 
    REFERENCES Captain(CaptainID) 
);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
    CONSTRAINT Crew_Captain_fk FOREIGN KEY (CaptainID) 
    REFERENCES Captain(CaptainID) 
);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    CrewName           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    CrewName           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    CrewName           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    ID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    CrewName           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/02/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/03/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4'44/04/4444,draw);

insert into Maintenance (Repair_date, Description) values ('1/01/1111,Functionall');

insert into Maintenance (Repair_date, Description) values ('2/02/2222,repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard,1');

insert into Captain (Name, Captain_LogID) values ('Christopher Pike,2');

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway,3');

insert into Captain (Name, Captain_LogID) values ('James T,4');

insert into Coordinates (Lattitude, Longitude) values ('50.12347, 10.9877893 ');

insert into Coordinates (Lattitude, Longitude) values ('40.3321598, 5.987872');

insert into Coordinates (Lattitude, Longitude) values ('35.4579825, 10.9879213');

insert into Starsystem (Name,CoordinatesID) values ('Sol,1');

insert into Starsystem (Name,CoordinatesID) values ('Vulkan,2');

insert into Starsystem (Name,CoordinatesID) values ('Rigel,3');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix,1,2');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise,1,3 ');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space ');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/02/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/03/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,44/04/4444,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/41/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/42/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/43/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,44/44/4444,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/1/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/2/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/3/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,44/4/4444,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,1/1/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,2/2/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,3/3/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,4/4/4444,draw');

4


insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/1/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/2/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/3/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,44/4/4444,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,Sep 1 2007 1:00PM,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,2007/09/08,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,08/09/2007,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,08/09/2007,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,	08.09.2007,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,'9999-12-31 23:59:59',in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,'9999-12-31, 23:59:59',in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,'9999-12-31 23:59:59',in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,'9999-12-31 23:59:59', in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,"9999-12-31 23:59:59", in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,"9999-12-31 23:59:59", in progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,9999-12-31 23:59:59, in progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,11/11/1111, in progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,11/11/1111, progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,Sysdate, progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sysdate,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sysdate,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sysdate,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,Sysdate,progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sysdate,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sysdate,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sysdate,draw');

insert into Battle (id,Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,1,Sysdate,progress");

select  
    "BATTLEID", 
    "BATTLE_NAMEID", 
    "CAPTAIN_LOGID", 
    "ATTACK_DATE", 
    "ATTACK_STATUS" 
from "BATTLE";

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,DONE');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,DONE,1');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,DONE,1,1');

insert into Maintenance (Repair_date, Description) values ('1/01/1111,Functionall');

insert into Maintenance (Repair_date, Description) values ('2/02/2222,repaired');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('3,3,30/03/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('4,4'40/04/4444,draw);

insert into Maintenance (Repair_time, Description) values ('11,Functionall');

insert into Maintenance (Repair_time, Description) values ('22,repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard,1');

insert into Captain (Name, Captain_LogID) values ('Christopher Pike,2');

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway,3');

insert into Captain (Name, Captain_LogID) values ('James T,4');

insert into Coordinates (Lattitude, Longitude) values ('50.12347, 10.9877893 ');

insert into Coordinates (Lattitude, Longitude) values ('40.3321598, 5.987872');

insert into Coordinates (Lattitude, Longitude) values ('35.4579825, 10.9879213');

insert into Starsystem (Name,CoordinatesID) values ('Sol,1');

insert into Starsystem (Name,CoordinatesID) values ('Vulkan,2');

insert into Starsystem (Name,CoordinatesID) values ('Rigel,3');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix,1,2');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise,1,3 ');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('3,3,30,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('4,4,40,draw');

insert into Battle (Battle_NameID, Captain_LogID, Attatck_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_NameID, Captain_LogID, Attatck_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_NameID, Captain_LogID, Attatck_Time, Attack_Status) values ('3,3,30,defeat');

insert into Battle (Battle_NameID, Captain_LogID, Attatck_Time, Attack_Status) values ('4,4,40,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('3,3,30,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('4,4,40,draw');

insert into Battle (Battle_nameID, Captain_LogID,  
Attack_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID,  
Attack_Time, Attack_Status) values ('1,1,1,in progress');

insert into Battle (Battle_nameID, Captain_LogID,  
Attack_Time, Attack_Status) values ('1,1,1,progress');

insert into Battle (Battle_nameID, Captain_LogID,  
Attack_Time, Attack_Status) values ('1,1,1, progress being done');

insert into Battle (Battle_nameID, 
) values ('1');

insert into Battle (Battle_nameID) values ('1');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (BattleID, Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('1,1,1,10,in progress');

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  1,1currently,2,2,3 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  1,currently,2,2,3 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  1,currently,30,30,30 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  30,currently,30,30,30 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  30,currently,30,30 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  30,currently,30,30,30 
);

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard,1');

insert into Captain (Name, Captain_LogID) values ('Christopher Pike,2');

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway,3');

insert into Captain (Name, Captain_LogID) values ('James T,4');

insert into Coordinates (Lattitude, Longitude) values ('50.12347, 10.9877893 ');

insert into Coordinates (Lattitude, Longitude) values ('40.3321598, 5.987872');

insert into Coordinates (Lattitude, Longitude) values ('35.4579825, 10.9879213');

insert into Starsystem (Name,CoordinatesID) values ('Sol,1');

insert into Starsystem (Name,CoordinatesID) values ('Vulkan,2');

insert into Starsystem (Name,CoordinatesID) values ('Rigel,3');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix,1,2');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise,1,3 ');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3');

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock.3,3');

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER  
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER  
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER  
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER  
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER  
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER  
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER  
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER (10), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER (10), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER (10), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER (10), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER (10), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER (10), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER (10), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER (10), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('3,3,30,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('4,4'40,draw);

insert into Maintenance (Repair_time, Description) values ('11,Functional');

insert into Maintenance (Repair_time, Description) values ('22,repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard,1');

insert into Captain (Name, Captain_LogID) values ('Christopher Pike,2');

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway,3');

insert into Captain (Name, Captain_LogID) values ('James T,4');

insert into Coordinates (Lattitude, Longitude) values ('50.12347, 10.9877893 ');

insert into Coordinates (Lattitude, Longitude) values ('40.3321598, 5.987872');

insert into Coordinates (Lattitude, Longitude) values ('35.4579825, 10.9879213');

insert into Starsystem (Name,CoordinatesID) values ('Sol,1');

insert into Starsystem (Name,CoordinatesID) values ('Vulkan,2');

insert into Starsystem (Name,CoordinatesID) values ('Rigel,3');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix,1,2');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise,1,3 ');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (1,1,10,'in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,'in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,'in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,30,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4'40,'draw');

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,'in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,30,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,40,'draw');

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893 );

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4);

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

SELECT * FROM CAPTAIN_LogID;

SELECT * FROM Captain_Log ;

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (1,1,10' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (4,444,'draw');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,444,'draw');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4);

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',10,4);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',10,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('USS Enterprise',1,3 );

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('USS Enterprise',1,3 );

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

CREATE SEQUENCE Role_sequence;

CREATE SEQUENCE Battle_name_sequence;

CREATE SEQUENCE Captain_Log_sequence;

CREATE SEQUENCE Battle_sequence;

CREATE SEQUENCE Maintenance_sequence;

CREATE SEQUENCE Captain_sequence;

CREATE SEQUENCE Coordinates_sequence;

CREATE SEQUENCE Starsystem_sequence;

CREATE SEQUENCE Spaceship_sequence;

CREATE SEQUENCE Crew_sequence;

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
    CONSTRAINT Crew_Captain_fk FOREIGN KEY (CaptainID) 
    REFERENCES Captain(CaptainID) 
);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
    CONSTRAINT Crew_Captain_fk FOREIGN KEY (CaptainID) 
    REFERENCES Captain(CaptainID) 
);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    CrewName           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    CrewName           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    CrewName           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID), 
);

CREATE TABLE Crew 
( 
    ID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    CrewName           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name           VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/02/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/03/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4'44/04/4444,draw);

insert into Maintenance (Repair_date, Description) values ('1/01/1111,Functionall');

insert into Maintenance (Repair_date, Description) values ('2/02/2222,repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard,1');

insert into Captain (Name, Captain_LogID) values ('Christopher Pike,2');

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway,3');

insert into Captain (Name, Captain_LogID) values ('James T,4');

insert into Coordinates (Lattitude, Longitude) values ('50.12347, 10.9877893 ');

insert into Coordinates (Lattitude, Longitude) values ('40.3321598, 5.987872');

insert into Coordinates (Lattitude, Longitude) values ('35.4579825, 10.9879213');

insert into Starsystem (Name,CoordinatesID) values ('Sol,1');

insert into Starsystem (Name,CoordinatesID) values ('Vulkan,2');

insert into Starsystem (Name,CoordinatesID) values ('Rigel,3');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix,1,2');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise,1,3 ');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Date       DATE NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_date     DATE NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space ');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/02/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/03/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,44/04/4444,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/41/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/42/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/43/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,44/44/4444,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/1/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/2/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/3/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,44/4/4444,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,1/1/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,2/2/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,3/3/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,4/4/4444,draw');

4


insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/1/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,22/2/2222,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,33/3/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,44/4/4444,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,Sep 1 2007 1:00PM,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,2007/09/08,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,08/09/2007,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,08/09/2007,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,	08.09.2007,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,'9999-12-31 23:59:59',in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,'9999-12-31, 23:59:59',in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,'9999-12-31 23:59:59',in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,'9999-12-31 23:59:59', in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,"9999-12-31 23:59:59", in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,"9999-12-31 23:59:59", in progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,9999-12-31 23:59:59, in progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sep 2 2007 2:00PM,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sep 3 2007 3:00PM,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sep 4 2007 4:00PM,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,11/11/1111, in progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,11/11/1111, progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,Sysdate, progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sysdate,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sysdate,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sysdate,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,Sysdate,progress");

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('2,2,Sysdate,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('3,3,Sysdate,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('4,4,Sysdate,draw');

insert into Battle (id,Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ("1,1,1,Sysdate,progress");

select  
    "BATTLEID", 
    "BATTLE_NAMEID", 
    "CAPTAIN_LOGID", 
    "ATTACK_DATE", 
    "ATTACK_STATUS" 
from "BATTLE";

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,DONE');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,DONE,1');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Date, Attack_Status) values ('1,1,11/01/1111,DONE,1,1');

insert into Maintenance (Repair_date, Description) values ('1/01/1111,Functionall');

insert into Maintenance (Repair_date, Description) values ('2/02/2222,repaired');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('3,3,30/03/3333,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('4,4'40/04/4444,draw);

insert into Maintenance (Repair_time, Description) values ('11,Functionall');

insert into Maintenance (Repair_time, Description) values ('22,repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard,1');

insert into Captain (Name, Captain_LogID) values ('Christopher Pike,2');

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway,3');

insert into Captain (Name, Captain_LogID) values ('James T,4');

insert into Coordinates (Lattitude, Longitude) values ('50.12347, 10.9877893 ');

insert into Coordinates (Lattitude, Longitude) values ('40.3321598, 5.987872');

insert into Coordinates (Lattitude, Longitude) values ('35.4579825, 10.9879213');

insert into Starsystem (Name,CoordinatesID) values ('Sol,1');

insert into Starsystem (Name,CoordinatesID) values ('Vulkan,2');

insert into Starsystem (Name,CoordinatesID) values ('Rigel,3');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix,1,2');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise,1,3 ');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('3,3,30,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('4,4,40,draw');

insert into Battle (Battle_NameID, Captain_LogID, Attatck_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_NameID, Captain_LogID, Attatck_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_NameID, Captain_LogID, Attatck_Time, Attack_Status) values ('3,3,30,defeat');

insert into Battle (Battle_NameID, Captain_LogID, Attatck_Time, Attack_Status) values ('4,4,40,draw');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('3,3,30,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('4,4,40,draw');

insert into Battle (Battle_nameID, Captain_LogID,  
Attack_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID,  
Attack_Time, Attack_Status) values ('1,1,1,in progress');

insert into Battle (Battle_nameID, Captain_LogID,  
Attack_Time, Attack_Status) values ('1,1,1,progress');

insert into Battle (Battle_nameID, Captain_LogID,  
Attack_Time, Attack_Status) values ('1,1,1, progress being done');

insert into Battle (Battle_nameID, 
) values ('1');

insert into Battle (Battle_nameID) values ('1');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (BattleID, Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values ('1,1,1,10,in progress');

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  1,1currently,2,2,3 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  1,currently,2,2,3 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  1,currently,30,30,30 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  30,currently,30,30,30 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  30,currently,30,30 
);

insert into BATTLE ( 
 BATTLEID,ATTACK_STATUS,BATTLE_NAMEID,CAPTAIN_LOGID,ATTACK_TIME 
) values ( 
  30,currently,30,30,30 
);

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard,1');

insert into Captain (Name, Captain_LogID) values ('Christopher Pike,2');

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway,3');

insert into Captain (Name, Captain_LogID) values ('James T,4');

insert into Coordinates (Lattitude, Longitude) values ('50.12347, 10.9877893 ');

insert into Coordinates (Lattitude, Longitude) values ('40.3321598, 5.987872');

insert into Coordinates (Lattitude, Longitude) values ('35.4579825, 10.9879213');

insert into Starsystem (Name,CoordinatesID) values ('Sol,1');

insert into Starsystem (Name,CoordinatesID) values ('Vulkan,2');

insert into Starsystem (Name,CoordinatesID) values ('Rigel,3');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix,1,2');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise,1,3 ');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3');

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock.3,3');

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER  
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER  
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER  
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER  
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER  
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER  
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER  
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER (10), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER (10), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER (10), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER (10), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER (10), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER (10), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER (10), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER (10), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('1,1,10,in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('2,2,20,victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('3,3,30,defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values ('4,4'40,draw);

insert into Maintenance (Repair_time, Description) values ('11,Functional');

insert into Maintenance (Repair_time, Description) values ('22,repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard,1');

insert into Captain (Name, Captain_LogID) values ('Christopher Pike,2');

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway,3');

insert into Captain (Name, Captain_LogID) values ('James T,4');

insert into Coordinates (Lattitude, Longitude) values ('50.12347, 10.9877893 ');

insert into Coordinates (Lattitude, Longitude) values ('40.3321598, 5.987872');

insert into Coordinates (Lattitude, Longitude) values ('35.4579825, 10.9879213');

insert into Starsystem (Name,CoordinatesID) values ('Sol,1');

insert into Starsystem (Name,CoordinatesID) values ('Vulkan,2');

insert into Starsystem (Name,CoordinatesID) values ('Rigel,3');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix,1,2');

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise,1,3 ');

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones,1,1');

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty,2,2');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek,4,4');

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (1,1,10,'in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,'in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,'in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,30,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4'40,'draw');

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,'in progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,30,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,40,'draw');

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893 );

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4);

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

SELECT * FROM CAPTAIN_LogID;

SELECT * FROM Captain_Log ;

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (1,1,10' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attatck_Time, Attack_Status) values (4,444,'draw');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,444,'draw');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock'.3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4');

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4);

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',4,4);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',10,4);

insert into Crew (Name, RoleID, CoordinatesID) values ('Sarek',10,3);

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('USS Enterprise',1,3 );

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name, MaintenanceID, CoordinatesID) values ('USS Enterprise',1,3 );

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

CREATE TABLE Role 
( 
    RoleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Role_PK PRIMARY KEY (RoleID) 
);

CREATE TABLE Battle_name  
( 
    Battle_nameID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_name     VARCHAR (255) NOT NULL, 
 CONSTRAINT Battle_name_PK PRIMARY KEY (Battle_nameID) 
);

CREATE TABLE Captain_Log  
( 
    Captain_LogID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Description     VARCHAR (255) NOT NULL, 
 CONSTRAINT Captain_Log_PK PRIMARY KEY (Captain_LogID) 
);

CREATE TABLE Battle 
( 
    BattleID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Battle_nameID     NUMBER (10) NOT NULL, 
    Captain_LogID     NUMBER(10) NOT NULL,  
    Attack_Time       NUMBER(10) NOT NULL, 
    Attack_Status     VARCHAR(200) NOT NULL, 
 CONSTRAINT Battle_PK PRIMARY KEY (BattleID), 
 CONSTRAINT Battle_BattleName_fk FOREIGN KEY (Battle_nameID) 
 REFERENCES Battle_name(Battle_nameID), 
 CONSTRAINT Battle_Captain_Log_fk FOREIGN KEY (Captain_LogID) 
 REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Maintenance 
( 
    MaintenanceID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Repair_time     NUMBER (10) NOT NULL, 
    Description     VARCHAR(200) NOT NULL, 
    CONSTRAINT Maintenance_PK PRIMARY KEY (MaintenanceID) 
);

CREATE TABLE Captain 
( 
    CaptainID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Captain_PK PRIMARY KEY (CaptainID), 
    Captain_LogID     NUMBER(10) NOT NULL,  
    CONSTRAINT Captain_Log_fk FOREIGN KEY (Captain_LogID) REFERENCES Captain_Log(Captain_LogID) 
);

CREATE TABLE Coordinates 
( 
    CoordinatesID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Lattitude FLOAT, 
    Longitude FLOAT, 
    CONSTRAINT Coordinates_PK PRIMARY KEY (CoordinatesID) 
);

CREATE TABLE Starsystem 
( 
    StarsystemID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Starsystem_PK PRIMARY KEY (StarsystemID), 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Starsystem_Coordinates_fk FOREIGN KEY (StarSystemID) 
    REFERENCES Coordinates(CoordinatesID) 
);

CREATE TABLE Spaceship 
( 
    SpaceshipID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Spaceship_PK PRIMARY KEY (SpaceshipID), 
    MaintenanceID     NUMBER(10) NOT NULL, 
    CoordinatesID     NUMBER(10) NOT NULL,  
    CONSTRAINT Spaceship_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Spaceship_Maintenance_fk FOREIGN KEY (MaintenanceID) 
    REFERENCES Maintenance(MaintenanceID) 
);

CREATE TABLE Crew 
( 
    CrewID          NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Name     VARCHAR (255) NOT NULL, 
    CONSTRAINT Crew_PK PRIMARY KEY (CrewID), 
    RoleID     NUMBER(10) NOT NULL,  
    CoordinatesID     NUMBER(10) NOT NULL, 
    CONSTRAINT Crew_Coordinates_fk FOREIGN KEY (CoordinatesID) 
    REFERENCES Coordinates(CoordinatesID), 
    CONSTRAINT Crew_Role_fk FOREIGN KEY (RoleID) 
    REFERENCES Role(RoleID) 
);

INSERT INTO Role (name) VALUES ('Commanding Officer');

INSERT INTO Role (name) VALUES ('Executive Officer');

INSERT INTO Role (name) VALUES ('Second Officer');

INSERT INTO Role (name) VALUES ('Chief Helm Officer');

INSERT INTO Role (name) VALUES ('Helm Officer');

INSERT INTO Role (name) VALUES ('Chief Operation Officer');

INSERT INTO Role (name) VALUES ('Operations Officer');

insert into Battle_name (Battle_name) values ('The Battle of Cardassia ');

insert into Battle_name (Battle_name) values ('The Second Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('The First Battle of Chin’toka');

insert into Battle_name (Battle_name) values ('Klingon assault against Dominion');

insert into Battle_name (Battle_name) values ('The Second Battle of Deep Space 9');

insert into Captain_Log (Description) values ('the combined forces of the Dominion and the Cardassian Union, led by Gul Dukat, launched an assault on the Federation-held starbase Deep Space 9.');

insert into Captain_Log (Description) values ('The objective of the mission was the recapture of starbase Deep Space Nine');

insert into Captain_Log (Description) values ('the first offensive launched by the allied forces of the United Federation of Planets,');

insert into Captain_Log (Description) values ('an attack against the Chin’toka System, a territory of the Cardassian Union held by the forces of the Federation,');

insert into Captain_Log (Description) values ('he Klingon Empire, and the Romulan Star Empire launched an invasion of the Dominion-held Cardassian Union');

insert into Maintenance (Repair_time, Description) values (11,'Functional');

insert into Maintenance (Repair_time, Description) values (22,'repaired');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (1,1,10,' progress');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (2,2,20,'victory');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (3,3,33,'defeat');

insert into Battle (Battle_nameID, Captain_LogID, Attack_Time, Attack_Status) values (4,4,44,'draw');

insert into Captain (Name, Captain_LogID) values ('Jean-Luc Picard',1);

insert into Captain (Name, Captain_LogID) values ('Christopher Pike',2);

insert into Captain (Name, Captain_LogID) values ('Kathryn Janeway',3);

insert into Captain (Name, Captain_LogID) values ('James T',4);

insert into Coordinates (Lattitude, Longitude) values (50.12347, 10.9877893);

insert into Coordinates (Lattitude, Longitude) values (40.3321598, 5.987872);

insert into Coordinates (Lattitude, Longitude) values (35.4579825, 10.9879213);

insert into Starsystem (Name,CoordinatesID) values ('Sol',1);

insert into Starsystem (Name,CoordinatesID) values ('Vulkan',2);

insert into Starsystem (Name,CoordinatesID) values ('Rigel',3);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('SS Botany Bay',1,1);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('Phoenix',1,2);

insert into Spaceship (Name,MaintenanceID,CoordinatesID) values ('USS Enterprise',1,3 );

insert into Crew (Name, RoleID, CoordinatesID) values ('Leonard Bones',1,1);

insert into Crew (Name, RoleID, CoordinatesID) values ('Scotty',2,2);

insert into Crew (Name, RoleID, CoordinatesID) values ('Spock',3,3);

CREATE SEQUENCE Role_sequence;

CREATE SEQUENCE Battle_name_sequence;

CREATE SEQUENCE Captain_Log_sequence;

CREATE SEQUENCE Battle_sequence;

CREATE SEQUENCE Maintenance_sequence;

CREATE SEQUENCE Captain_sequence;

CREATE SEQUENCE Coordinates_sequence;

CREATE SEQUENCE Starsystem_sequence;

CREATE SEQUENCE Spaceship_sequence;

CREATE SEQUENCE Crew_sequence;

CREATE OR REPLACE TRIGGER Role_insert 
	BEFORE INSERT ON Role 
	FOR EACH ROW 
BEGIN 
	SELECT Role_sequence.nextval 
	INTO :NEW.Roleid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Battle_name 
	BEFORE INSERT ON Battle_name 
	FOR EACH ROW 
BEGIN 
	SELECT Battle_name_sequence.nextval 
	INTO :NEW.Battle_nameid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Captain_Log 
	BEFORE INSERT ON Captain_Log 
	FOR EACH ROW 
BEGIN 
	SELECT Captain_Log_sequence.nextval 
	INTO :NEW.Captain_Logid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Battle 
	BEFORE INSERT ON Battle 
	FOR EACH ROW 
BEGIN 
	SELECT Battle_sequence.nextval 
	INTO :NEW.Battle 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Maintenance 
	BEFORE INSERT ON Maintenance 
	FOR EACH ROW 
BEGIN 
	SELECT Maintenance_sequence.nextval 
	INTO :NEW.Maintenance 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Captain 
	BEFORE INSERT ON Captain 
	FOR EACH ROW 
BEGIN 
	SELECT Captain_sequence.nextval 
	INTO :NEW.Captainid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Coordinates 
	BEFORE INSERT ON Coordinates 
	FOR EACH ROW 
BEGIN 
	SELECT Coordinates_sequence.nextval 
	INTO :NEW.Coordinatesid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Starsystem 
	BEFORE INSERT ON Starsystem 
	FOR EACH ROW 
BEGIN 
	SELECT Starsystem_sequence.nextval 
	INTO :NEW.Starsystemid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Spaceship 
	BEFORE INSERT ON Spaceship 
	FOR EACH ROW 
BEGIN 
	SELECT Spaceship_sequence.nextval 
	INTO :NEW.Spaceshipid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Crew 
	BEFORE INSERT ON Crew 
	FOR EACH ROW 
BEGIN 
	SELECT Crew_sequence.nextval 
	INTO :NEW.Crewid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Role_insert 
	BEFORE INSERT ON Role 
	FOR EACH ROW 
BEGIN 
	SELECT Role_sequence.nextval 
	INTO :NEW.Roleid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Battle_name_insert 
	BEFORE INSERT ON Battle_name 
	FOR EACH ROW 
BEGIN 
	SELECT Battle_name_sequence.nextval 
	INTO :NEW.Battle_nameid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Captain_Log_insert 
	BEFORE INSERT ON Captain_Log 
	FOR EACH ROW 
BEGIN 
	SELECT Captain_Log_sequence.nextval 
	INTO :NEW.Captain_Logid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Battle_insert 
	BEFORE INSERT ON Battle 
	FOR EACH ROW 
BEGIN 
	SELECT Battle_sequence.nextval 
	INTO :NEW.Battle 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Maintenance_insert 
	BEFORE INSERT ON Maintenance 
	FOR EACH ROW 
BEGIN 
	SELECT Maintenance_sequence.nextval 
	INTO :NEW.Maintenance 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Captain_insert 
	BEFORE INSERT ON Captain 
	FOR EACH ROW 
BEGIN 
	SELECT Captain_sequence.nextval 
	INTO :NEW.Captainid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Coordinates_insert 
	BEFORE INSERT ON Coordinates 
	FOR EACH ROW 
BEGIN 
	SELECT Coordinates_sequence.nextval 
	INTO :NEW.Coordinatesid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Starsystem_insert 
	BEFORE INSERT ON Starsystem 
	FOR EACH ROW 
BEGIN 
	SELECT Starsystem_sequence.nextval 
	INTO :NEW.Starsystemid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Spaceship_insert 
	BEFORE INSERT ON Spaceship 
	FOR EACH ROW 
BEGIN 
	SELECT Spaceship_sequence.nextval 
	INTO :NEW.Spaceshipid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Crew_insert 
	BEFORE INSERT ON Crew 
	FOR EACH ROW 
BEGIN 
	SELECT Crew_sequence.nextval 
	INTO :NEW.Crewid 
	FROM dual; 
END; 
 

/

CREATE OR REPLACE TRIGGER Role_insert 
	BEFORE INSERT ON Role 
	FOR EACH ROW 
BEGIN 
	SELECT Role_sequence.nextval 
	INTO :NEW.Roleid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Battle_name_insert 
	BEFORE INSERT ON Battle_name 
	FOR EACH ROW 
BEGIN 
	SELECT Battle_name_sequence.nextval 
	INTO :NEW.Battle_nameid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Captain_Log_insert 
	BEFORE INSERT ON Captain_Log 
	FOR EACH ROW 
BEGIN 
	SELECT Captain_Log_sequence.nextval 
	INTO :NEW.Captain_Logid 
	FROM dual; 
END; 
/

CREATE OR REPLACE TRIGGER Battle_insert 
	BEFORE INSERT ON Battle 
	FOR EACH ROW 
BEGIN 
	SELECT Battle_sequence.nextval 
	INTO :NEW.Battle 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Maintenance_insert 
	BEFORE INSERT ON Maintenance 
	FOR EACH ROW 
BEGIN 
	SELECT Maintenance_sequence.nextval 
	INTO :NEW.Maintenance 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Captain_insert 
	BEFORE INSERT ON Captain 
	FOR EACH ROW 
BEGIN 
	SELECT Captain_sequence.nextval 
	INTO :NEW.Captainid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Coordinates_insert 
	BEFORE INSERT ON Coordinates 
	FOR EACH ROW 
BEGIN 
	SELECT Coordinates_sequence.nextval 
	INTO :NEW.Coordinatesid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Starsystem_insert 
	BEFORE INSERT ON Starsystem 
	FOR EACH ROW 
BEGIN 
	SELECT Starsystem_sequence.nextval 
	INTO :NEW.Starsystemid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Spaceship_insert 
	BEFORE INSERT ON Spaceship 
	FOR EACH ROW 
BEGIN 
	SELECT Spaceship_sequence.nextval 
	INTO :NEW.Spaceshipid 
	FROM dual; 
END; 
 
CREATE OR REPLACE TRIGGER Crew_insert 
	BEFORE INSERT ON Crew 
	FOR EACH ROW 
BEGIN 
	SELECT Crew_sequence.nextval 
	INTO :NEW.Crewid 
	FROM dual; 
END; 
 

/

CREATE OR REPLACE PROCEDURE display_crew 
AS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Displaying all crew members: '); 
	FOR record IN ( SELECT  captain.captainname, crew.crewname, crew.crewroleid, 
                    FROM    captain, crew   
                    WHERE   crew.crew_captainid = captain.captainid)  
    LOOP 
        DBMS_OUTPUT.PUT_LINE('> captain: ' || record.captainsname || ', Name: ' || record.crewname || ', Role: ' || record.crewroleid ); 
    END LOOP; 
     
    DBMS_OUTPUT.PUT_LINE(''); 
END; 
/

EXEC display_crew


CREATE OR REPLACE PROCEDURE display_crew 
AS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Displaying all crew members: '); 
	FOR record IN ( SELECT  captain.captainname, crew.crewname, crew.crewroleid 
                    FROM    captain, crew   
                    WHERE   crew.crew_captainid = captain.captainid)  
    LOOP 
        DBMS_OUTPUT.PUT_LINE('> captain: ' || record.captainsname || ', Name: ' || record.crewname || ', Role: ' || record.crewroleid ); 
    END LOOP; 
     
    DBMS_OUTPUT.PUT_LINE(''); 
END; 
/

EXEC display_crew 


CREATE OR REPLACE PROCEDURE display_crew 
AS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Displaying all crew members: '); 
	FOR record IN ( SELECT  captain.name, crew.name, crew.roleid 
                    FROM    captain, crew   
                    WHERE   crew.crew_captainid = captain.captainid)  
    LOOP 
        DBMS_OUTPUT.PUT_LINE('> captain: ' || record.captainsname || ', Name: ' || record.crewname || ', Role: ' || record.crewroleid ); 
    END LOOP; 
     
    DBMS_OUTPUT.PUT_LINE(''); 
END; 
/

EXEC display_crew 


CREATE OR REPLACE PROCEDURE display_crew 
AS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Displaying all crew members: '); 
	FOR record IN ( SELECT  captain.name, crew.name, crew.roleid 
                    FROM    captain, crew   
                    WHERE   crew.crew_captainid = captain.captainid)  
    LOOP 
        DBMS_OUTPUT.PUT_LINE('> captain: ' || record.captainsname || ', Name: ' || record.crewname || ', Role: ' || record.crewroleid ); 
    END LOOP; 
     
    DBMS_OUTPUT.PUT_LINE(''); 
END; 
/

EXEC display_crew 


CREATE OR REPLACE FUNCTION member_location (cm_number NUMBER) 
    RETURN NUMBER IS 
   CrewID            NUMBER; 
BEGIN 
    SELECT CrewID           
    INTO CrewID           
    FROM  crew 
    WHERE CrewID           = cm_number; 
    RETURN CrewID  ; 
END; 

/

CREATE OR REPLACE TRIGGER addlog_access 
BEFORE INSERT ON CaptainLog 
FOR EACH ROW 
BEGIN 
    IF (:NEW.Captain_LogID > 100) THEN 
        RAISE_APPLICATION_ERROR(-20111, 'Access Denied!'); 
    END IF; 
END; 

/

CREATE OR REPLACE TRIGGER addlog_access 
BEFORE INSERT ON Captain_Log 
FOR EACH ROW 
BEGIN 
    IF (:NEW.Captain_LogID > 100) THEN 
        RAISE_APPLICATION_ERROR(-20111, 'Access Denied!'); 
    END IF; 
END; 

/

CREATE OR REPLACE FUNCTION calculate_distance (latitude1 IN NUMBER, latitude2 IN NUMBER, longitude1 IN NUMBER, longitude2 IN NUMBER) 
    RETURN NUMBER IS 
    distance NUMBER; 
BEGIN 
    distance := (3956 * 2 * ASIN(SQRT( POWER(SIN(( latitude2 - latitude1) / 2), 2) +COS(latitude2) * COS(latitude1) 
    		 * POWER(SIN((longitude2 - longitude1 ) / 2), 
/

CREATE OR REPLACE FUNCTION calculate_distance (latitude1 IN NUMBER, latitude2 IN NUMBER, longitude1 IN NUMBER, longitude2 IN NUMBER) 
    RETURN NUMBER IS 
    distance NUMBER; 
BEGIN 
    distance := (3956 * 2 * ASIN(SQRT( POWER(SIN(( latitude2 - latitude1) / 2), 2) +COS(latitude2) * COS(latitude1) 
    		 * POWER(SIN((longitude2 - longitude1 ) / 2);
/

CREATE OR REPLACE PROCEDURE beam_outsideship  
IS   
BEGIN   
UPDATE crewmembers SET starsystemid='1' WHERE Coordinates_id='2';   
END;  

/

CREATE OR REPLACE PROCEDURE beam_outsideship  
IS   
BEGIN   
UPDATE crew SET starsystemid='1' WHERE Coordinates_id='2';   
END;  

/

CREATE OR REPLACE PROCEDURE beam_outsideship  
IS   
BEGIN   
UPDATE crew SET starsystemid='1' WHERE Coordinatesid='2';   
END;  

/

CREATE OR REPLACE PROCEDURE beam_outsideship  
IS   
BEGIN   
UPDATE crew SET starsystemID='1' WHERE CoordinatesID='2';   
END;  

/

CREATE OR REPLACE PROCEDURE beam_outsideship  
IS   
BEGIN   
UPDATE crew SET CrewID='1' WHERE CoordinatesID='2';   
END;  

/

CREATE OR REPLACE PROCEDURE beam_insideship   
IS   
BEGIN   
UPDATE crew SET CoordinatesID='2' WHERE CrewID='2';   
END;    
/

CREATE OR REPLACE PROCEDURE beam_outsideship  
IS   
BEGIN   
UPDATE crew SET CoordinatesID='1' WHERE CrewID='2';   
END;  

/

CREATE OR REPLACE PROCEDURE display_crew 
AS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Displaying all crew members: '); 
	FOR record IN ( SELECT  Crew.RoleID, crew.crewname, crew.CoordinatesID, Captain.CaptainId 
                    FROM    Crew, Captain 
                    WHERE   crew.crew_Roleid = Captain.CaptainID)  
    LOOP 
        DBMS_OUTPUT.PUT_LINE('> Crew: ' || record.RoleID || ', Name: ' || record.crewname || ', Role: ' || record.CoordinatesID || ', Access Level: ' || record.CaptainId); 
    END LOOP; 
     
    DBMS_OUTPUT.PUT_LINE(''); 
END; 
/

EXEC display_crew 


CREATE OR REPLACE PROCEDURE display_crew 
AS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Displaying all crew members: '); 
	FOR record IN ( SELECT  Crew.RoleID, crew.crewname, crew.CoordinatesID, Captain.CaptainId 
                    FROM    Crew, Captain 
                    WHERE   crew.crew_Roleid = Captain.CaptainID)  
   
     
    DBMS_OUTPUT.PUT_LINE(''); 
END; 
/

EXEC display_crew 


drop procedure "DISPLAY_CREW";

create or replace FUNCTION calculate_distance (latitude1 IN NUMBER, latitude2 IN NUMBER, longitude1 IN NUMBER, longitude2 IN NUMBER)  
    RETURN NUMBER IS  
    distance NUMBER;  
BEGIN  
    distance := (3956 * 2 * ASIN(SQRT( POWER(SIN(( latitude2 - latitude1) / 2), 2) +COS(latitude2) * COS(latitude1)  
    		 * POWER(SIN((longitude2 - longitude1 ) / 2); 
/

create or replace FUNCTION calculate_distance (latitude1 IN NUMBER, latitude2 IN NUMBER, longitude1 IN NUMBER, longitude2 IN NUMBER)  
    RETURN NUMBER IS  
    distance NUMBER;  
BEGIN  
    distance := (3956 * 2 * ASIN(SQRT( POWER(SIN(( latitude2 - latitude1) / 2), 2) +COS(latitude2) * COS(latitude1)  
    		 * POWER(SIN((longitude2 - longitude1 ) / 2); 

/

create or replace FUNCTION calculate_distance (latitude1 IN NUMBER, latitude2 IN NUMBER, longitude1 IN NUMBER, longitude2 IN NUMBER)  
    RETURN NUMBER IS  
    distance NUMBER;  
BEGIN  
    distance := (3956 * 2 * ASIN(SQRT( POWER(SIN(( latitude2 - latitude1) / 2), 2) +COS(latitude2) * COS(latitude1)  
    		 * POWER(SIN((longitude2 - longitude1 ) / 2); 
RETURN distance; 
END
/

create or replace FUNCTION calculate_distance (latitude1 IN NUMBER, latitude2 IN NUMBER, longitude1 IN NUMBER, longitude2 IN NUMBER)  
    RETURN NUMBER IS  
    distance NUMBER;  
BEGIN  
    distance := (3956 * 2 * ASIN(SQRT( POWER(SIN(( latitude2 - latitude1) / 2), 2) +COS(latitude2) * COS(latitude1)  
    		 * POWER(SIN((longitude2 - longitude1 ) / 2), 2))); 
RETURN distance; 
END
/

CREATE OR REPLACE FUNCTION calculate_distance (latitude1 IN NUMBER, latitude2 IN NUMBER, longitude1 IN NUMBER, longitude2 IN NUMBER) 
    RETURN NUMBER IS 
    distance NUMBER; 
BEGIN 
    distance := (3956 * 2 * ASIN(SQRT( POWER(SIN(( latitude2 - latitude1) / 2), 2) +COS(latitude2) * COS(latitude1) 
    		 * POWER(SIN((longitude2 - longitude1 ) / 2), 2) ))); 
RETURN distance; 
END; 

/

