SELECT * FROM suppliers;


# 오후 2:05 2023-10-06
#
# 1페이지에 10개의 rows
# suppliers 목록은 3이지가 마지막 페이지
# count record 수 ㅣ 마지막 페이지
# 1~10               1
# 11~20              2
# 21~30              3
# 31~40              4
# 레코드가 n개 이고 페이지 10페이지 씩 보여줄 때 마지막 페이지 번호는
# ((n-1)/10)+1



SELECT * FROM products p join suppliers s 
On p.supplierID = s.SupplierID; 
SELECT * FROM products p join suppliers s using (supplierID);