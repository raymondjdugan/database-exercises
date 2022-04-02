USE raymond;

CREATE TABLE IF NOT EXISTS ad_users
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    last_name  varchar(255) NOT NULL,
    email      varchar(255) UNIQUE,
    login_id   int UNSIGNED,
    address_id int UNSIGNED,
    FOREIGN KEY (login_id) REFERENCES credentials (id),
    FOREIGN KEY (address_id) REFERENCES user_address (id)
);

CREATE TABLE IF NOT EXISTS credentials
(
    id       INT UNSIGNED  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) NOT NULL UNIQUE,
    password varchar(20)   NOT NULL
);

CREATE TABLE IF NOT EXISTS user_address
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    address varchar(1024),
    apt     varchar(50),
    city    varchar(1024),
    state   varchar(2),
    zip     varchar(15)
);

CREATE TABLE IF NOT EXISTS ad
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id     int UNSIGNED,
    ad_name     varchar(255),
    description varchar(1024),
    FOREIGN KEY (user_id) REFERENCES ad_users (id)
);

CREATE TABLE IF NOT EXISTS user_ad
(
    ad_id  int UNSIGNED,
    cat_id int UNSIGNED,
    FOREIGN KEY (ad_id) REFERENCES ad (id),
    FOREIGN KEY (cat_id) REFERENCES ad_category (id)
);

CREATE TABLE IF NOT EXISTS ad_category
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name varchar(255) UNIQUE
);

