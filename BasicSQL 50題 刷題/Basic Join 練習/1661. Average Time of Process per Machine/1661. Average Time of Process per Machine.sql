# Write your MySQL query statement below
/*題目意思 : 計算機台運作平均時間*/
/*
round 計算設定的條件   ,3 取到小數點第三位
sum 計算時間 開始減掉結束的總和alter
count(distinct process_id) 計算了指定列的不重複值數量，在這就是計算每台機台獨立運行過程
*/
select machine_id, 
round(sum(if(activity_type = 'start', -timestamp, timestamp)) / count(distinct process_id), 3) as processing_time
from Activity
group by machine_id
order by machine_id