USE raymond;

CREATE TABLE movies
(
    id           int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title        varchar(255) UNIQUE,
    director     varchar(255),
    poster       varchar(255),
    dateReleased varchar(255),
    yearMade     int,
    genre        varchar(255),
    plot         varchar(1024),
    rating       varchar(2),
    imdb         double,
    runtime      int,
    actors       varchar(255)
);
