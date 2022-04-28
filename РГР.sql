--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Пт апр 29 00:53:34 2022
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Игрок
CREATE TABLE Игрок (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, имя STRING NOT NULL, возраст INTEGER NOT NULL, пол_id REFERENCES Пол (id) NOT NULL, страна_id REFERENCES Страна (id) NOT NULL);
INSERT INTO Игрок (id, имя, возраст, пол_id, страна_id) VALUES (1, 'Jonny Clayton', 47, 1, 27);
INSERT INTO Игрок (id, имя, возраст, пол_id, страна_id) VALUES (2, 'Gary Anderson', 51, 1, 4);

-- Таблица: Матчи
CREATE TABLE Матчи (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "1игрок_id" REFERENCES Игрок (id) NOT NULL, "2игрок_id" REFERENCES Игрок (id) NOT NULL, "1счёт" INTEGER NOT NULL, "2счёт" INTEGER NOT NULL, турнир_id REFERENCES Турнир (id) NOT NULL);
INSERT INTO Матчи (id, "1игрок_id", "2игрок_id", "1счёт", "2счёт", турнир_id) VALUES (1, 1, 2, 6, 2, 1);

-- Таблица: Место
CREATE TABLE Место (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, название STRING NOT NULL);
INSERT INTO Место (id, название) VALUES (1, 'New Arena');
INSERT INTO Место (id, название) VALUES (2, 'Old Arena');

-- Таблица: Пол
CREATE TABLE Пол (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name STRING NOT NULL);
INSERT INTO Пол (id, name) VALUES (1, 'Male');
INSERT INTO Пол (id, name) VALUES (2, 'Female');

-- Таблица: Ср.рейтинг
CREATE TABLE "Ср.рейтинг" (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "кол-во" DOUBLE NOT NULL);

-- Таблица: Страна
CREATE TABLE Страна (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, название STRING NOT NULL);
INSERT INTO Страна (id, название) VALUES (1, 'Netherlands');
INSERT INTO Страна (id, название) VALUES (2, 'Australia');
INSERT INTO Страна (id, название) VALUES (3, 'England');
INSERT INTO Страна (id, название) VALUES (4, 'Scotland');
INSERT INTO Страна (id, название) VALUES (5, 'Portugal');
INSERT INTO Страна (id, название) VALUES (6, 'Belgium');
INSERT INTO Страна (id, название) VALUES (7, 'Poland');
INSERT INTO Страна (id, название) VALUES (8, 'Northern Ireland');
INSERT INTO Страна (id, название) VALUES (9, 'Austria');
INSERT INTO Страна (id, название) VALUES (10, 'Ireland');
INSERT INTO Страна (id, название) VALUES (11, 'Russia');
INSERT INTO Страна (id, название) VALUES (12, 'Italy');
INSERT INTO Страна (id, название) VALUES (13, 'France');
INSERT INTO Страна (id, название) VALUES (14, 'Livia');
INSERT INTO Страна (id, название) VALUES (15, 'Canada');
INSERT INTO Страна (id, название) VALUES (16, 'Germany');
INSERT INTO Страна (id, название) VALUES (17, 'USA');
INSERT INTO Страна (id, название) VALUES (18, 'Mexico');
INSERT INTO Страна (id, название) VALUES (19, 'Sweden');
INSERT INTO Страна (id, название) VALUES (20, 'Finland');
INSERT INTO Страна (id, название) VALUES (21, 'China');
INSERT INTO Страна (id, название) VALUES (22, 'Albania');
INSERT INTO Страна (id, название) VALUES (23, 'Albania');
INSERT INTO Страна (id, название) VALUES (24, 'Greece');
INSERT INTO Страна (id, название) VALUES (25, 'Latvia');
INSERT INTO Страна (id, название) VALUES (26, '-');
INSERT INTO Страна (id, название) VALUES (27, 'Wales');

-- Таблица: Турнир
CREATE TABLE Турнир (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "дата/время" DATETIME NOT NULL, название STRING NOT NULL, место_id REFERENCES Место (id));
INSERT INTO Турнир (id, "дата/время", название, место_id) VALUES (1, '21.04.2022', 'Premier League 11', 1);
INSERT INTO Турнир (id, "дата/время", название, место_id) VALUES (2, '18.04.2022', 'German Darts Grand Prix', 1);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
