
Use mydb1;

CREATE TABLE my_table46 (
    col1 INT,
    col2 INT,
    col3 INT,
    col4 INT,
    col5 INT
);

-- NOT NULL 이라는 제약사항 추가 )(+ modify

ALTER TABLE my_table46 MODIFY col1 INT NOT NULL;

DESC my_table46;

-- NOT NULL 제약 사항 삭제
ALTER TABLE my_table46

MODIFY col1 INT NULL;


-- col2에 not null추가
-- col2에 not null 제약사항 삭제

ALTER TABLE my_table46 MODIFY col2 INT NOT NULL;

alter TABLE my_table46
MODIFY col2 INT NULL;

ALTER TABLE  my_table46
ALTER  col3 set DEFAULT 100;

ALTER TABLE  my_table46
ALTER col3 DROP DEFAULT ;


-- col4에 기본값0 제약사항 추가
-- col4의 default 제약 사항 삭제
ALTER TABLE  my_table46
ALTER col4 SET DEFAULT 0;

ALTER TABLE my_table46
Alter col4 DROP DEFAULT;



-- unique 제약사항 추가
ALTER TABLE my_table46
ADD UNIQUE (col5);

-- 위 unique제약 사항을 삭제하려면

# -- 제약사항의 명칭을 확인하려면
# SHOW CREATE TABLE 'my_table46' (
#     `col1` int(11) DEFAULT NULL,
#     `col2` int(11) DEFAULT NULL,
#     `col3` int(11),
#     `col4` int(11),
#     `col5` int(11) DEFAULT NULL,
#     UNIQUE KEY `col5` (`col5`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ALTER TABLE my_table46
DROP INDEX col5;
-- primary key 제약사항 추가
ALTER TABLE my_table46
ADD PRIMARY KEY (col1,col2);
DESC my_table46;
-- primary key를 삭제하려면,,,
ALTER TABLE my_table46
DROP PRIMARY KEY;
ALTER TABLE my_table46
MODIFY col1 INT Null;

CREATE TABLE my_table47(
id INT AUTO_INCREMENT primary key ,
name VARCHAR(10)
);
-- FORIEGN KEY 제약사항 추가
ALTER TABLE my_table46
ADD FOREIGN KEY (col5) REFERENCES  my_table47(id);


-- FORIEGN KEY 제약 사항 삭제
SHOW CREATE TABLE my_table47;
# +코드 참고




DESC my_table46;

