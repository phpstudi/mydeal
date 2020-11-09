CREATE DATABASE Дела_в_порядке;
CREATE  TABLEproject(
 id INT NOT NULL AUTO_INCREMENT,
 projects VARCHAR(30),
 userID INT,
    PRIMARY KEY (id)
); 
INSERT INTO project(projects)
    VALUES 
 ('входящие'),
 ('учеба'),
 ('работа'),
 ('домашние дела'),
 ('авто');

INSERT INTO project(userID)
    VALUES (1),(2),(3);
    SELECT project.projects, users.name_user FROM users
    INNER JOIN project ON users.id = project.userID;

  CREATETABLEtask(
 id INT NOT NULL AUTO_INCREMENT,
 creation_date DATETIME,
 status_task TINYINT,
 name_task VARCHAR(200),
 file_users VARCHAR(100),
 DATE,
 usertaskID INT,
 projectID INT,
    PRIMARY KEY (id)
);
INSERT INTO task(name_task)
    VALUES 
 ('Собеседование в IT компании'),
 ('Выполнить тестовое задание'),
    ('Сделать задание первого раздела'),
    ('Встреча с другом'),
    ('Купить корм для кота'),
    ('Заказать пиццу');

INSERT INTO task(usertaskID, projectID)
    VALUES 
    (1,2),
    (2,3);
    SELECT task.usertaskID, users.name_user FROM users
    INNER JOIN task ON users.id = task.usertaskID;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    registretion DATETIME,
    email VARCHAR(30),
    name_user VARCHAR(30),
    password_user VARCHAR(30),
    PRIMARY KEY (id)
);
CREATE INDEX UserINDEX ON users(name_user)

INSERT INTO users(name_user)
    VALUES 
    ('Bob'),
    ('Tom'),
    ('Alex'),