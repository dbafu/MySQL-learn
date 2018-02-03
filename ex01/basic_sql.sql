use test_db;
CREATE TABLE tbl_user (
    user_name VARCHAR(20),
    age INT,
    sign_up DATE
);

insert into tbl_user values ("darkmi", '28', '2015-01-01');

SELECT 
    *
FROM
    tbl_user;

SELECT 
    user_name, age, s ign_up
FROM
    tbl_user;

SELECT 
    *
FROM
    tbl_user
WHERE
    user_name = 'darkmi';

SELECT 
    *
FROM
    tbl_user
WHERE
    user_name = 'darkmi' AND age = 28;

UPDATE tbl_user 
SET 
    age = 30
WHERE
    user_name = 'darkmi';

insert into tbl_user values ("jikexueyuan", 18, "2015-01-01");

SELECT 
    *
FROM
    tbl_user
WHERE
    user_name = 'darkmi';


UPDATE tbl_user 
SET 
    age = 30
WHERE
    user_name = 'darkmi';


DELETE FROM tbl_user 
WHERE
    user_name = 'darkmi';

alter table tbl_user add email varchar(50);

alter table tbl_user drop email;

alter table tbl_user change age user_age int;

alter table tbl_user change user_age user_age tinyint(1) not null;

alter table tbl_user rename user_tbl;

drop table user_tbl;