/*解讀題目
 找出從未訂購過商品的顧客*/
 /*設定查詢欄位為coustomers 的 name，而查詢的欄位名稱為 customers*/
 select name as Customers from Customers
 /*查詢條件為 id 不在 order表單的customerID 欄位裡*/
 where id not in (select customerID from Orders)