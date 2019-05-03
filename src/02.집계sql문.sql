-- 1
select MAX(salary) as '최고임금', min(salary) as '최저임금',(MAX(salary) - min(salary))  
from salaries ;

-- 2
select date_format(hire_date,'%x년 %m월 %d일') 
from employees order by hire_date desc limit 1;


-- 3
select date_format(hire_date,'%x년 %m월 %d일'), 
PERIOD_DIFF( DATE_FORMAT(CURDATE(), '%Y%m'),  
                    DATE_FORMAT(hire_date, '%Y%m') ) as term
 from employees order by term desc limit 1;
 
 -- 3
 select date_format(hire_date,'%x년 %m월 %d일'), PERIOD_DIFF( DATE_FORMAT(CURDATE(), '%Y%m'),DATE_FORMAT(hire_date, '%Y%m') ) 
 as term from employees group by hire_date having MAX(term) order by term desc limit 1;
 
 -- 4 
 select avg(salary) from salaries group by to_date having to_date = '9999-01-01';
 
 -- 5
 select MAX(salary), MIN(salary) from salaries group by to_date having to_date = '9999-01-01';

-- 6
select  PERIOD_DIFF(DATE_FORMAT(min(birth_date), '%y'),DATE_FORMAT(now(),'%y')) as '어린이'  ,
PERIOD_DIFF(DATE_FORMAT(MAX(birth_date), '%y'),DATE_FORMAT(now(),'%y')) as '노인'
 from employees;