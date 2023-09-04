/*設定tb1 的名字為 employee，裏頭包含id name salery managerId*/
select tb1.name as employee
/*tb1 為 別名，方便查詢*/
from employee as tb1
/*自我連接，tb2 的表格也是 employee*/
left join employee as tb2
/*tb的managerId 與 tb2.Id 連接*/
on tb1.managerId = tb2.Id
/*設定篩選條件*/
where tb1.salary > tb2.salary