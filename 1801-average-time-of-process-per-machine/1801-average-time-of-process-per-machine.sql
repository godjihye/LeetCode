# Write your MySQL query statement below
select A1.machine_id AS 'machine_id', ROUND(AVG(A2.timestamp - A1.timestamp), 3) as processing_time
from Activity AS A1 
JOIN Activity AS A2 ON A1.machine_id = A2.machine_id and A1.process_id = A2.process_id and A1.timestamp < A2.timestamp
group by A1.machine_id;