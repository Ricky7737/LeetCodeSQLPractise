/*題目意思
計算客戶的確認率 action = confirmed，取到小數點第二位
先計算 action = confirmed ， 除user_id 個別出現次數alter
然後再把 s 與 c 兩表連接後
以 user_id 分組
*/
select s.user_id,
round(sum(if(action='confirmed',1,0))/count(s.user_id),2) as confirmation_rate
from Signups s left join Confirmations c
on s.user_id = c.user_id
group by s.user_id