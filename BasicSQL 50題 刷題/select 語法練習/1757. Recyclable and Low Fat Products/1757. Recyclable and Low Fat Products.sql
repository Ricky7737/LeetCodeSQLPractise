/* 題目意思 : 找尋 low_fats 與 recyclable 都是 Y 的
查詢索引為 product*/
select product_id from Products
where low_fats = 'Y' and recyclable = 'Y'