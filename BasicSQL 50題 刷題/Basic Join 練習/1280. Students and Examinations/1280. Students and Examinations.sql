/*計算每個學生參加每次考試的次數*/
/*用 COUNT 函數來計算每個分組中考試的次數。這裡使用了 e.subject_name 來計算每個考試的次數
因為 subject_name 在 Examinations 表格中可能包含重複值*/
select s.student_id, s.student_name, u.subject_name, 
count(e.subject_name) as attended_exams
from Students as s
 join Subjects as u 
 left join Examinations as e
 on s.student_id = e.student_id and u.subject_name = e.subject_name
group by s.student_id, u.subject_name
order by s.student_id, u.subject_name