/*題目意思
篩選出看過自己文章的 article_id (作者編號)
並以由小到大排列
當 author_id 與 viewer_id 同一個數字代表看過自己的文章alter
*/
select distinct auther_id as id from views
where auther_id = viewer_id
order by id
