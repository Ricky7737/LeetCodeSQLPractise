/*找出重複的 Email*/
/*設定查詢欄位為 person 中的 Email*/
select Email from person
/*將 email 進行分組*/
group by email
/*用來篩選出 email 重複的*/
/*having 通常與 groupby 一起使用*/
having count(email)>1