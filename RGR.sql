--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Пт апр 29 03:05:16 2022
--
-- Использованная кодировка текста: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Country
CREATE TABLE Country (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name STRING NOT NULL);
INSERT INTO Country (id, name) VALUES (1, 'Netherlands');
INSERT INTO Country (id, name) VALUES (2, 'Australia');
INSERT INTO Country (id, name) VALUES (3, 'England');
INSERT INTO Country (id, name) VALUES (4, 'Scotland');
INSERT INTO Country (id, name) VALUES (5, 'Portugal');
INSERT INTO Country (id, name) VALUES (6, 'Belgium');
INSERT INTO Country (id, name) VALUES (7, 'Poland');
INSERT INTO Country (id, name) VALUES (8, 'Northern Ireland');
INSERT INTO Country (id, name) VALUES (9, 'Austria');
INSERT INTO Country (id, name) VALUES (10, 'Ireland');
INSERT INTO Country (id, name) VALUES (11, 'Russia');
INSERT INTO Country (id, name) VALUES (12, 'Italy');
INSERT INTO Country (id, name) VALUES (13, 'France');
INSERT INTO Country (id, name) VALUES (14, 'Livia');
INSERT INTO Country (id, name) VALUES (15, 'Canada');
INSERT INTO Country (id, name) VALUES (16, 'Germany');
INSERT INTO Country (id, name) VALUES (17, 'USA');
INSERT INTO Country (id, name) VALUES (18, 'Mexico');
INSERT INTO Country (id, name) VALUES (19, 'Sweden');
INSERT INTO Country (id, name) VALUES (20, 'Finland');
INSERT INTO Country (id, name) VALUES (21, 'China');
INSERT INTO Country (id, name) VALUES (22, 'Albania');
INSERT INTO Country (id, name) VALUES (23, 'Albania');
INSERT INTO Country (id, name) VALUES (24, 'Greece');
INSERT INTO Country (id, name) VALUES (25, 'Latvia');
INSERT INTO Country (id, name) VALUES (26, '-');
INSERT INTO Country (id, name) VALUES (27, 'Wales');

-- Таблица: Gender
CREATE TABLE Gender (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name STRING NOT NULL);
INSERT INTO Gender (id, name) VALUES (1, 'Male');
INSERT INTO Gender (id, name) VALUES (2, 'Female');

-- Таблица: Match
CREATE TABLE "Match" (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "1player_id" REFERENCES Player (id) NOT NULL, "2player_id" REFERENCES Player (id) NOT NULL, "1score" INTEGER NOT NULL, "2score" INTEGER NOT NULL, tour_id REFERENCES Tour (id) NOT NULL);
INSERT INTO "Match" (id, "1player_id", "2player_id", "1score", "2score", tour_id) VALUES (1, 1, 2, 6, 2, 1);

-- Таблица: Place
CREATE TABLE Place (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name STRING NOT NULL);
INSERT INTO Place (id, name) VALUES (1, 'New Arena');
INSERT INTO Place (id, name) VALUES (2, 'Old Arena');

-- Таблица: Player
CREATE TABLE Player (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name STRING NOT NULL, age INTEGER NOT NULL, gender_id REFERENCES Gender (id) NOT NULL, country_id REFERENCES Country (id) NOT NULL, average DOUBLE);
INSERT INTO Player (id, name, age, gender_id, country_id, average) VALUES (1, 'Jonny Clayton', 47, 1, 27, 98.4);
INSERT INTO Player (id, name, age, gender_id, country_id, average) VALUES (2, 'Gary Anderson', 51, 1, 4, 96.2);

-- Таблица: Tour
CREATE TABLE Tour (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, data DATETIME NOT NULL, name STRING NOT NULL, place_id REFERENCES Place (id));
INSERT INTO Tour (id, data, name, place_id) VALUES (1, '21.04.2022', 'Premier League 11', 1);
INSERT INTO Tour (id, data, name, place_id) VALUES (2, '18.04.2022', 'German Darts Grand Prix', 1);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
