1) select first_name as worker_name from Worker
 2) select upper(first_name) from Worker 
 3) select distinct department from Worker
 4) select substring(first_name,1,3) as worker_name from Worker 
 5) Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';
 6) select RTRIM(first_name) from Worker
 7) select LTRIM(first_name) from Worker
 8) select distinct department , length(department) from Worker
 9) select replace(first_name,'a','A') from Worker
 10) select concat(first_name , ' ' , last_name) as complete_name from Worker
 11) select * from worker order by first_name ASC
 12) select * from worker order by first_name ASC , department DESC
 13) select * from worker where first_name in ('Vipul' , 'Satish')
 14) select * from Worker where first_name not in ('Vipul','Satish') 
 15) Select * from Worker where DEPARTMENT like 'Admin%';
 16) Select * from Worker where FIRST_NAME like '%a%';
 17 Select * from Worker where FIRST_NAME like '%a';
 18) select * from Worker where first_name like'_____h'
 19) select * from worker where salary between 100000 and 300000
 20) select * from worker where year(joining_date)=2014 and month(joining_date)=2
 21) select count(*) from worker  where department='Admin' 
 22) select concat(first_name ,' ', last_name), salary as worker_name from worker where salary >=50000  and salary<=100000
 22) SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary
FROM worker 
WHERE WORKER_ID IN 
(SELECT WORKER_ID FROM worker 
WHERE Salary BETWEEN 50000 AND 100000);
23) select department, count(worker_id) as total_worker  from worker group by department  order by total_worker desc
24) SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE
FROM Worker W
INNER JOIN Title T
ON W.WORKER_ID = T.WORKER_REF_ID
AND T.WORKER_TITLE in ('Manager');
25) SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;
26) select * from worker where MOD(worker_id,2) <>0
27) select * from worker where MOD(worker_id,2) = 0
28) CREATE TABLE WorkerClone LIKE Worker; #it copy table without any data
28) CREATE TABLE new_table SELECT * FROM  worker; #it copy table with data
29) (SELECT * FROM Worker)
INTERSECT
(SELECT * FROM WorkerClone);
30) SELECT * FROM Worker
MINUS
SELECT * FROM Title;
31) SELECT CURDATE();
32) SELECT * FROM Worker ORDER BY Salary DESC LIMIT 10;
33) SELECT first_name, Salary FROM Worker ORDER BY Salary DESC LIMIT 4,1;
34) SELECT Salary
FROM Worker W1
WHERE 4 = (
 SELECT COUNT( DISTINCT ( W2.Salary ) )
 FROM Worker W2
 WHERE W2.Salary >= W1.Salary
 );
 35) Select distinct W.WORKER_ID, W.FIRST_NAME, W.Salary 
from Worker W, Worker W1 
where W.Salary = W1.Salary 
and W.WORKER_ID != W1.WORKER_ID;
 36) Select  first_name, max(Salary) from Worker 
where Salary not in (Select max(Salary) from Worker);
37)  select FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='HR' 
union all 
select FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='HR';
38) select first_name , salary from worker
where worker_id >(select count(worker_id)/2 from worker)
39) select department,count(worker_id) as 'total workers' from worker group by department having count(worker_id)<5
40) select * from worker where worker_id in (select max(worker_id) from worker)
41) SELECT * FROM worker
WHERE 
worker_id > (SELECT COUNT(*) FROM worker) - 5;
43) select first_name , max(salary), department from worker group by department
44) SELECT distinct Salary, first_name from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;
 45) SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary >= b.Salary) order by a.Salary desc;
 
 
 