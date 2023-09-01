/*題目意思
合併兩個表格
最後目標欄位要有 firstName, lastName city state*/
SELECT FirstName, LastName, City, State
/*指定查詢的來源表*/
FROM Person
/*將Person 與 Address 進行 左連接*/
LEFT JOIN Address
/*連接條件為 PersonId*/
ON Person.PersonId = Address.PersonId