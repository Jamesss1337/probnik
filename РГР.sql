--
-- ���� ������������ � ������� SQLiteStudio v3.3.3 � �� ��� 29 00:53:34 2022
--
-- �������������� ��������� ������: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������: �����
CREATE TABLE ����� (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ��� STRING NOT NULL, ������� INTEGER NOT NULL, ���_id REFERENCES ��� (id) NOT NULL, ������_id REFERENCES ������ (id) NOT NULL);
INSERT INTO ����� (id, ���, �������, ���_id, ������_id) VALUES (1, 'Jonny Clayton', 47, 1, 27);
INSERT INTO ����� (id, ���, �������, ���_id, ������_id) VALUES (2, 'Gary Anderson', 51, 1, 4);

-- �������: �����
CREATE TABLE ����� (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "1�����_id" REFERENCES ����� (id) NOT NULL, "2�����_id" REFERENCES ����� (id) NOT NULL, "1����" INTEGER NOT NULL, "2����" INTEGER NOT NULL, ������_id REFERENCES ������ (id) NOT NULL);
INSERT INTO ����� (id, "1�����_id", "2�����_id", "1����", "2����", ������_id) VALUES (1, 1, 2, 6, 2, 1);

-- �������: �����
CREATE TABLE ����� (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� STRING NOT NULL);
INSERT INTO ����� (id, ��������) VALUES (1, 'New Arena');
INSERT INTO ����� (id, ��������) VALUES (2, 'Old Arena');

-- �������: ���
CREATE TABLE ��� (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name STRING NOT NULL);
INSERT INTO ��� (id, name) VALUES (1, 'Male');
INSERT INTO ��� (id, name) VALUES (2, 'Female');

-- �������: ��.�������
CREATE TABLE "��.�������" (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "���-��" DOUBLE NOT NULL);

-- �������: ������
CREATE TABLE ������ (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� STRING NOT NULL);
INSERT INTO ������ (id, ��������) VALUES (1, 'Netherlands');
INSERT INTO ������ (id, ��������) VALUES (2, 'Australia');
INSERT INTO ������ (id, ��������) VALUES (3, 'England');
INSERT INTO ������ (id, ��������) VALUES (4, 'Scotland');
INSERT INTO ������ (id, ��������) VALUES (5, 'Portugal');
INSERT INTO ������ (id, ��������) VALUES (6, 'Belgium');
INSERT INTO ������ (id, ��������) VALUES (7, 'Poland');
INSERT INTO ������ (id, ��������) VALUES (8, 'Northern Ireland');
INSERT INTO ������ (id, ��������) VALUES (9, 'Austria');
INSERT INTO ������ (id, ��������) VALUES (10, 'Ireland');
INSERT INTO ������ (id, ��������) VALUES (11, 'Russia');
INSERT INTO ������ (id, ��������) VALUES (12, 'Italy');
INSERT INTO ������ (id, ��������) VALUES (13, 'France');
INSERT INTO ������ (id, ��������) VALUES (14, 'Livia');
INSERT INTO ������ (id, ��������) VALUES (15, 'Canada');
INSERT INTO ������ (id, ��������) VALUES (16, 'Germany');
INSERT INTO ������ (id, ��������) VALUES (17, 'USA');
INSERT INTO ������ (id, ��������) VALUES (18, 'Mexico');
INSERT INTO ������ (id, ��������) VALUES (19, 'Sweden');
INSERT INTO ������ (id, ��������) VALUES (20, 'Finland');
INSERT INTO ������ (id, ��������) VALUES (21, 'China');
INSERT INTO ������ (id, ��������) VALUES (22, 'Albania');
INSERT INTO ������ (id, ��������) VALUES (23, 'Albania');
INSERT INTO ������ (id, ��������) VALUES (24, 'Greece');
INSERT INTO ������ (id, ��������) VALUES (25, 'Latvia');
INSERT INTO ������ (id, ��������) VALUES (26, '-');
INSERT INTO ������ (id, ��������) VALUES (27, 'Wales');

-- �������: ������
CREATE TABLE ������ (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "����/�����" DATETIME NOT NULL, �������� STRING NOT NULL, �����_id REFERENCES ����� (id));
INSERT INTO ������ (id, "����/�����", ��������, �����_id) VALUES (1, '21.04.2022', 'Premier League 11', 1);
INSERT INTO ������ (id, "����/�����", ��������, �����_id) VALUES (2, '18.04.2022', 'German Darts Grand Prix', 1);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
