select  unique_id,name 
from  Employees as a
/*結合兩張表單*/
left join EmployeeUNI as b
/*條件為 a 表 id 與 b 表 id 一樣的*/
on a.id = b.id