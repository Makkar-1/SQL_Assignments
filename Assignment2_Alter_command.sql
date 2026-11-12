-- ASSIGNMENT: 02
-- Alter command exercise

Show databases;

Drop database if exists DDL_Commands;
create DATABASE DDL_Commands;
use  DDL_Commands;

CREATE TABLE my_table(
id INT,
name VARCHAR(100) Not NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

-- Create my_table2
-- Create my_table2
CREATE TABLE my_table2(
    id INT,
    description VARCHAR(255) NOT NULL
);

-- Insert data into my_table2
INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');

select * from my_table;
select * from my_table2;
describe my_table;
describe my_table2;

-- Ques: 1- 
alter table my_table rename column name to full_name;

-- Ques: 2-
alter table my_table modify age bigint;

-- Ques: 3-
alter table my_table add column email varchar(100);

-- Ques: 4-
alter table my_table add column middle_name varchar(50) after full_name;

-- Ques: 5-
alter table my_table add column EMP_Rank int first;

-- Ques: 6-
alter table my_table modify column created_at datetime;

-- Ques: 7-
alter table my_table2 modify column description text;

-- Ques: 8-
alter table my_table modify column full_name varchar(100) null;

-- Ques: 9-
alter table my_table add primary key(id);

-- Ques: 10-
alter table my_table drop middle_name;

-- Ques: 11-
alter table my_table rename column email_address to email;

-- Ques: 12-
alter table my_table modify age bigint null; 

-- Ques: 13-
alter table my_table2 add constraint fk_mytable2_id foreign key(id) references my_table(id);

-- Ques: 14-
alter table my_table2 drop foreign key fk_mytable2_id;

-- Ques: 15-
alter table my_table modify full_name varchar(200);

-- DROP Command Questions:
-- ques: 16-
drop table my_table2;

-- Ques: 17-
alter table my_table2 drop foreign key fk_id;

-- Ques: 18-
alter table my_table drop primary key;

-- Ques: 19-
alter table my_table drop age;

-- Ques: 20-
drop database if exists ddl_commands;

################################################################################

show index from my_table;
show index from my_table2;

SHOW CREATE TABLE my_table;
SHOW CREATE TABLE my_table2;