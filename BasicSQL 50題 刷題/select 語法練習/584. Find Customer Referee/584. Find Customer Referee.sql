/*找出referee 不為 2 的人*/
select name from Customer
where referee_id != 2 or referee_id is null

/*SQL 中搜尋 null 要用 is null。null不屬一個實際的值*/
