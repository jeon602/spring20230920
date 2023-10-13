# 조인할 때  특정

SELECT * FROM products p join suppliers s
                              On p.supplierID = s.SupplierID;
SELECT * FROM products p join suppliers s using (supplierID);

SELECT * FROM products p NATURAL JOIN suppliers s;

# join  ----- w3schools
#               INNER JOIN 교집합
#               LEFT JOIN 교집합과 왼쪽 테이블
#               RIGHT JOIN