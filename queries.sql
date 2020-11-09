INSERT INTO project(projects, userID)
    VALUES 
    ('входящие', 1),
    ('учеба', 2),
    ('работа', 1),
    ('домашние дела', 2),
    ('авто', 3);

INSERT INTO task(creation_date, name_task, projectID)
    VALUES 
    ('01.02.2020','Собеседование в IT компании',3),
    ('03.02.2020','Выполнить тестовое задание',2),
    ('04.02.2020','Сделать задание первого раздела',2),
    ('06.03.2020','Встреча с другом',4),
    ('07.02.2020','Купить корм для кота',4),
    ('10.02.2020','Заказать пиццу',4);

INSERT INTO users(name_user)
    VALUES 
    ('Bob'),
    ('Tom'),
    ('Alex');

    
    SELECT project.projects, users.name_user FROM users
    INNER JOIN project ON users.id = project.userID
    WHERE userID=2;

    SELECT task.name_task, project.projects FROM project
    INNER JOIN task ON task.projectID = project.id
    WHERE project.id=2;

   UPDATE task SET status_task = '1' WHERE id = 2;