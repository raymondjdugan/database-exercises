drop table if exists albulms;
create table if not exists albulms(
                                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                      artist varchar(50),
    albulm_name varchar(100) ,
    release_date int,
    sales float ,
    genres varchar(150),
    primary key(id)
);
