USE codeup_test_db;
# DROP TABLE albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    album VARCHAR(50) NOT NULL,
    release_date INT,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (artist, album)
);




