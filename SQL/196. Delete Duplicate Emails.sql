# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
delete p
from Person p, Person q 
where p.Id>q.Id and q.Email=p.Email 
