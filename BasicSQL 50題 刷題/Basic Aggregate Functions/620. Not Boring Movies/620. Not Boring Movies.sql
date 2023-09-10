/* 題目意思
找出 奇數 id 的 電影
而且 description 不是 boring 的電影
*/

# Write your MySQL query statement below
select * from Cinema
/* 使用 mod 取 id/2 的餘數=1 就是奇數 */
where mod(id,2) = 1 and description != 'boring'
order by rating desc