CREATE DATABASE Дела_в_порядке;
CREATE TABLE project(
    id INT NOT NULL AUTO_INCREMENT,
    projects INT,
    PRIMARY KEY (id)
    FOREIGN KEY (userID) REFERENCES users(id)
); 
CREATE INDEX projetsINDEX ON project(projects);

CREATE TABLE task(
    id INT NOT NULL AUTO_INCREMENT,
    creation_date DATETIME,
    status_task TINYINT,
    name_task VARCHAR(200),
    file_users  VARCHAR(100),
    due_date DATE,
    projectID INT,
    PRIMARY KEY (id),
    FOREIGN KEY (projectID) REFERENCES project(id)
);
CREATE INDEX name_taskINDEX ON task(name_task);

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    registretion DATETIME,
    email VARCHAR(30),
    name_user VARCHAR(30),
    password_user VARCHAR(30),
    PRIMARY KEY (id)
);
CREATE INDEX UserINDEX ON users(name_user);





    

    