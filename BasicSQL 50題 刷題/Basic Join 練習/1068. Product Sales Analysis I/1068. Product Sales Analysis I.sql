/*查詢對應產品的年分與價格*/
select product_name, year, price 
from Sales s
left join Product p
on s.product_id = p.product_id