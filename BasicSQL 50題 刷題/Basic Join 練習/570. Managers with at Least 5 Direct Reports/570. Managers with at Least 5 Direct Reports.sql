/* Write your MySQL query statement below */
/*
題目意思 : 找出至少有五名直接下屬的經理
*/
select e1.name from Employee as e1
/*使用 join 方式將 Employee  查詢結果連結
而 having 通常會與 group by 一起*/
join (
    select managerId from Employee
    group by managerId
    having count(managerId) >= 5
)e2
on e1.id = e2.managerId