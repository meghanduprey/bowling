-- ****************************************************
-- Create the database
-- ****************************************************

-- Delete the database if it exists
-- NOTE: Delete this line when using your *webhost*

DROP DATABASE IF EXISTS bowling;

-- NOTE: Delete this line when using your *webhost*
-- Create a new bowling database

CREATE DATABASE bowling;

-- -- NOTE: Delete this line when using your *webhost* and make
-- sure you have selected the correct database before running the code

-- Select the bowling database
 
 USE bowling;

-- ****************************************************
-- Create tables
-- ****************************************************

CREATE TABLE teams
(
    team_id     TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    team_name   VARCHAR(20) NOT NULL,
    captain_id  TINYINT UNSIGNED NOT NULL
);

CREATE TABLE bowlers
( 
    bowler_id   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(25) NOT NULL,
    last_name   VARCHAR(25) NOT NULL,
    middle_init CHAR(1),
    address     VARCHAR(30),
    city        VARCHAR(30),
    state       CHAR(2),
    zip         CHAR(5),
    phone       VARCHAR(10),
    team_fk     INT
);

CREATE TABLE scores
(
    score_id    INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    game_number INT UNSIGNED NOT NULL,
    raw_score   INT UNSIGNED NOT NULL,
    handicap_score  INT UNSIGNED NOT NULL,
    bowler_id_fk  INT UNSIGNED NOT NULL
);

-- Ignoring referential integrity - time to code some PHP! 

-- ****************************************************
-- populate tables
-- ****************************************************
INSERT INTO teams 
    (team_id, team_name, captain_id)
VALUES 
    (1,'Marlins',2),
    (2,'Sharks',5),
    (3,'Terrapins',12),
    (4,'Flounders',15)
    ;

INSERT INTO bowlers
    (bowler_id, first_name, last_name, middle_init, address, city, state, zip, phone, team_fk)
VALUES
    (1,'Barbara','Fournier',NULL,'67 Willow Drive','Bothell','WA','98123','2065559867',1),
    (2,'David','Fournier',NULL,'67 Willow Drive','Bothell','WA','98123','2065559867',1),
    (3,'John','Kennedy','A','2957 W 33rd','Ballard','WA','98099','2065557854',1),
    (4,'Sara','Shesky','J','17950 N 59th','Seattle','WA','98011','2065559893',1),
    (5,'Ann','Patterson','K','16 Maple Lane','Auburn','WA','98011','2065553487',2),
    (6,'Neil','Patterson',NULL,'16 Maple Lane','Auburn','WA','98011','2065553487',2),
    (7,'David','Viescas','A','16679 NE 42ND Court','Redmond','WA','98052','2068828878',2),
    (8,'Stephanie','Viescas',NULL,'16679 NE 42ND Court','Redmond','WA','98052','2068828878',2),
    (9,'Alastair','Black',NULL,'4726 - 11th Ave N.E.','Seattle','WA','98105','2065551189',3),
    (10,'David','Cunningham',NULL,'4110 Old Redmond Rd.','Redmond','WA','98052','2065558122',3),
    (11,'Angel','Kennedy',NULL,'2957 W 33rd','Ballard','WA','98099','2065557854',3),
    (12,'Carol','Viescas','M','16345 NE 32nd Street','Bellvue','WA','98044','2065557295',3),
    (13,'Elizabeth','Hallmark',NULL,'Route 2 Box 203B','Woodinville','WA','98072','2065558990',4),
    (14,'Gary','Hallmark',NULL,'Route 2 Box 203B','Woodinville','WA','98072','2065558990',4),
    (15,'Kathryn','Patterson',NULL,'16 Maple Lane','Auburn','WA','98022','2065555348',4),
    (16,'Richard','Shesky',NULL,'17950 N 59th','Seattle','WA','98011','2065559891',4)
    ;

INSERT INTO scores
    (score_id, game_number, raw_score, handicap_score, bowler_id_fk)
VALUES
    (NULL,1,1,146,192),
    (NULL,1,2,166,205),
    (NULL,1,3,140,171),
    (NULL,1,4,146,198),
    (NULL,1,5,157,203),
    (NULL,1,6,160,198),
    (NULL,1,7,170,199),
    (NULL,1,8,150,202),
    (NULL,1,9,146,191),
    (NULL,1,10,154,190),
    (NULL,1,11,168,201),
    (NULL,1,12,136,188),
    (NULL,1,13,143,186),
    (NULL,1,14,142,181),
    (NULL,1,15,137,171),
    (NULL,1,16,143,195),
    (NULL,2,1,146,192),
    (NULL,2,2,135,174),
    (NULL,2,3,156,187),
    (NULL,2,4,143,195),
    (NULL,2,5,149,195),
    (NULL,2,6,152,190),
    (NULL,2,7,158,187),
    (NULL,2,8,136,188),
    (NULL,2,9,138,183),
    (NULL,2,10,171,207),
    (NULL,2,11,180,213),
    (NULL,2,12,145,197),
    (NULL,2,13,155,198),
    (NULL,2,14,166,205),
    (NULL,2,15,155,189),
    (NULL,2,16,139,191),
    (NULL,3,1,153,199),
    (NULL,3,2,177,216),
    (NULL,3,3,191,222),
    (NULL,3,4,148,200),
    (NULL,3,5,139,185),
    (NULL,3,6,142,180),
    (NULL,3,7,192,221),
    (NULL,3,8,148,200),
    (NULL,3,9,161,206),
    (NULL,3,10,172,208),
    (NULL,3,11,186,219),
    (NULL,3,12,136,188),
    (NULL,3,13,162,205),
    (NULL,3,14,137,176),
    (NULL,3,15,163,197),
    (NULL,3,16,143,195)
    ;

