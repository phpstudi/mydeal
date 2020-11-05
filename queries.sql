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

INSERT INTO users(name_user)
    VALUES 
    ('Bob'),
    ('Tom'),
    ('Alex'),