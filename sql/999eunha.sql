CREATE DATABASE mydb1;
CREATE SCHEMA mydb2;

# SELECT * FROM mydb1.table_name;
SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.products;
# SELECT * FROM product;
USE mydb1;
select * from w3schools.products;

DROP DATABASE mydb2;
DROP DATABASE mydb1;

USE w3schools;
CREATE DATABASE mydb1;

# -----------------------------------------------

USE mydb1;
-- create table
# CREATE TABLE 테이블명(
#     columnName columnType,
#     columnName columnType
# );

-- 테이블 명  컬럼명 작성 관습
# lower_snake_case(*)
# UPPER_SNAKE_CASE
# UpperCamelCase
# lowerCamelCase

CREATE TABLE my_table1(
    col_name1 varchar(100),
    col_name2 varchar(100),
    col_name3 varchar(100)
);
select * FROM my_table1;
INSERT INTO my_table1(col_name1, col_name2, col_name3) values ('민재', '흥민','강인');
-- 예 : 마이 테이블 2 만들고, column 은 4개 , 모든 컬럼 타입 varchar(10)

CREATE TABLE my_table2(
    age varchar(10),
    address varchar(10),
    phone_number varchar(10),
    country varchar(10)
);
select * From my_table2;
Insert into my_table2(age, address, phone_number, country) VALUE ('30','Seoul','010','Korea');
#-----------------------------------------------------------------------------------------------------------------------
# data-type 21번 파일
-- 정수와 실수 (수형)
-- 문자열
-- 날짜 (날짜 시간)
-- 정수 : int
CREATE TABLE my_table3(
    col1 int
);
Insert Into my_table3(col1) value (20190857);
Insert Into my_table3(col1) value ('1234012');
Insert Into my_table3(col1) value ('two'); -- 안된다

-- 실수 ㅣ DEC
CREATE Table my_table4(
    col1 DEC -- DEX(10, 0)
                      );
INSERT Into my_table4(col1) value (3.14);
SELECT * FROM my_table4;

CREATE TABLE my_table5
    (col1 DEC(5,3) -- 총 길이는 5, 소숫점 이하 길이 3
        );
INSERT INTO my_table5(col1)value (10.123);
INSERT INTO my_table5(col1)value (10.1234);
INSERT INTO my_table5(col1)value (123.456);

SELECT * FROM my_table5;

CREATE Table my_table6(age Int, score DEC(7,2));

INSERT INTO my_table6(age, score) VALUE (300,2342.33);
INSERT INTO my_table6(age, score) VALUE (300,2342.334);
SELECT * From my_table6;
-- 문자열 VARCHAR
CREATE TABLE my_table7(
    col1 VARCHAR(1),
    col2 VARCHAR(2),
    col3 VARCHAR(1600)
);
CREATE TABLE my_table8(
    col1 VARCHAR(8000),
    col2 VARCHAR(8000)
     );



--
--
