select A.student_id, A.student_name, A.subject_name, IFNULL(B.attended_exams, 0) AS attended_exams
from (
	select ST.*, SB.*
	from Students AS ST
	cross join Subjects AS SB 
) AS A 
left outer join (
	select student_id, subject_name, count(subject_name) as attended_exams
	from Examinations
	group by student_id, subject_name) AS B ON A.student_id = B.student_id AND A.subject_name = B.subject_name
order by A.student_id, A.subject_name;