drop table if exists albulms;
create table if not exists albulms(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist varchar(255),
    albulm_name varchar(255) ,
    release_date int,
    sales decimal(12,6) ,
    genres varchar(255),
    primary key(id)
);

show table;

describe albums;
