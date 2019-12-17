USE deimos_db;
CREATE TABLE students (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birthday DATE,
    projects TEXT NOT NULL,
    is_hired TINYINT(4) DEFAULT NULL,
    PRIMARY KEY(id)
);