/*找尋比前一天溫度還高的日期*/
/*給定一個 table 找出比前一天溫度還高日期的id*/
select a.id as id
/*將 a表 與 b表結合*/
from Weather as a join Weather as b
/*找出 a表 溫度 高於 b 表的 溫度 */
on a.temperature > b.temperature 
/*這部分確保只有日期相差1天的日期（即前一天）才會被比較。
datediff 函數來計算日期 a 和日期 b 之間的日期差異，並且這個差異必須等於1 */
and datediff(a.recordDate, b.recordDate) = 1