/*題目意思，推文字數大於 15 的為無效推文，篩選出來*/
select Tweet_id  from Tweets
/*length(要計算的欄位) => 計算欄位每一筆資料字數*/
where length(content) > 15