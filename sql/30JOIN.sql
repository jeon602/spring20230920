use mydb1;

CREATE TABLE my_table42_a (
    col1 varchar(1)
);
CREATE TABLE my_table43_b(
    col1 VARCHAR(1)
);
INSERT INTO my_table42_a (col1)
value ('a'),
      ('b'),
      ('c');


INSERT INTO my_table43_b (col1)
value ('b'),('c'),('d'),('e');




SELECT * FROM my_table42_a a join my_table43_b b
        on a.col1 = b.col1;
# a에도 있고, b에도 있는 - 교집합- inner  join
# join이라고 하든 innerjoin이라고 하든 , 동일한 의미를 갖는다.




# LEFT JOIN
SELECT * FROM my_table42_a a JOIN my_table43_b b;


SELECT * FROM my_table42_a a left OUTER JOIN my_table43_b b
ON a.col1 = b.col1; --

SELECT * FROM my_table42_a a RIGHT OUTER JOIN my_table43_b b
ON a.col1 = b.col1;    -- 오른 쪽에 남는 것...: d와 e     RIGHT OUTER JOIN



Create TABLE  my_table44_a
( col1 VARCHAR(1),
    name VARCHAR(10),
    address VARCHAR(10)
);
Create TABLE  my_table45_b
( col1 VARCHAR(1),
  product VARCHAR(10),
  country VARCHAR(10)
);
INSERT INTO my_table44_a (col1, name, address)
VALUES ('a', '흥', '런던'),
       ('b','강인', '파리'),
       ('c', '민재', '뮌헨');

INSERT INTO my_table45_b (col1, product, country) VALUES
                                                      ('b','축구공','한국'),
                                                      ('c','컴퓨터','미국'),
                                                      ('d','전화기','호주'),
                                                      ('e','햄','영국');

SELECT * FROM my_table44_a a join my_table45_b b
ON a.col1 = b.col1;

SELECT * FROM my_table44_a Left Join  my_table45_b b
            ON a.col1 = b.col1;
SELECT * FROM my_table44_a Right Join my_table45_b b ON a.col1 = b.col1;
