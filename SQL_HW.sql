-- Table for Users
CREATE TABLE users (username VARCHAR(255) PRIMARY KEY Not Null,
    password VARCHAR(255));
INSERT INTO users (username, password)
    VALUES ("Amelia-Earhart", "Youaom139&");
INSERT INTO users (username, password)
    VALUES ("Otto", "StarWars2*");

-- Table for Ratings
CREATE TABLE ratings (id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    song VARCHAR(255),
    ratings INT,
    FOREIGN KEY (username) REFERENCES users(username) On DELETE CASCADE);
INSERT INTO ratings (username, song, ratings)
    VALUES ("Amelia-Earhart", "Freeway", 3);
INSERT INTO ratings (username, song, ratings)
    VALUES ("Amelia-Earhart", "Days of Wine and Roses", 4);
INSERT INTO ratings (username, song, ratings)
    VALUES ("Otto", "Days of Wine and Roses", 5);
INSERT INTO ratings (username, song, ratings)
    VALUES ("Amelia-Earhart", "These Walls", 4);

-- Table for Artists
CREATE TABLE artists (song VARCHAR(255) PRIMARY KEY,
    artist VARCHAR(255),
    FOREIGN KEY (song) REFERENCES ratings(song) On DELETE CASCADE);
INSERT INTO artists (song, artist)
    VALUES ("Freeway", "Aimee Mann");
INSERT INTO artists (song, artist)
    VALUES ("Days of Wine and Roses", "Bill Evans");
INSERT INTO artists (song, artist)
    VALUES ("These Walls", "Kendrick Lamar");

