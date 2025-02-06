# Write your MySQL query statement below
select EM.name, BN. bonus
from Employee AS EM
left outer join Bonus AS BN ON EM.empId = BN.empId
where BN.bonus is NULL OR BN.bonus < 1000;