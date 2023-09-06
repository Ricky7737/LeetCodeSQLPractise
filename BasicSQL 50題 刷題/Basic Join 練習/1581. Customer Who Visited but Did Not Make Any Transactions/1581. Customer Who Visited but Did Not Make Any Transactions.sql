/* 題目意思 
找出 客戶(customer_id) 來訪 但沒 交易的次數 
依照題目來看
customer_id 23 交易 對應 transaction_id 12
9 號客人 交易 對應 13
30 號客人沒有任何交易
54 號客人來訪 5 7 8 但 7跟8 沒有坐交易
96 號客人沒有任何交易
*/

/* count(visit_id) 計算交易次數*/ 
select customer_id, count(visit_id) as count_no_trans
from Visits
/*找出出現在 visit 但沒有在 Transactions */
where visit_id not in(
    select visit_id from Transactions
)
group by  customer_id