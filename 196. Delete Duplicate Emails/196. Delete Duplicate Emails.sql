/*解讀題目 : 刪除重複的 email，只留下一個
而且要用 DELECT 不能使用 SELECT*/
delete from Person
where id not in
(select * from(
  select min(id) 
  from Person
  group by email)
as result)

/*
1.SELECT min(id) : 查詢不同電子郵件的最小 id
2.group by email : 以 email 分組
3.SELECT * FROM (...) as result：這部分將整個子查詢包裝在另一個外部查詢中。(...)表示子查詢
然後將其命名為"result"，這樣它可以在外部查詢中被引用。
*/