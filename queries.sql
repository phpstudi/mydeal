INSERT INTO project(projects)
    VALUES 
    ('входящие'),
    ('учеба'),
    ('работа'),
    ('домашние дела'),
    ('авто');

INSERT INTO task(name_task)
    VALUES 
    ('Собеседование в IT компании'),
    ('Выполнить тестовое задание'),
    ('Сделать задание первого раздела'),
    ('Встреча с другом'),
    ('Купить корм для кота'),
    ('Заказать пиццу');

INSERT INTO users(name_user)
    VALUES 
    ('Bob'),
    ('Tom'),
    ('Alex');

    SELECT project.projects, users.name_user FROM users
    INNER JOIN project ON users.id = project.id;

    SELECT task.name_task, project.projects FROM project
    INNER JOIN task ON task.id = project.id;

   UPDATE task SET status_task = '1' WHERE id = 2;