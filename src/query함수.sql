-- select 기본
select * from departments;

select first_name, gender,hire_date from employees;

select concat(first_name,' ' ,last_name) as 'name' from employees;

select distinct title from titles;

select concat(first_name,' ' ,last_name) as 'name', hire_date from employees order by hire_date;

select emp_no, salary, from_date from salaries where from_date like '2001%' order by salary asc;

select emp_no, dept_no from dept_emp where dept_no in ('d005','d009');

-- 문자형 함수
select upper('Seoul'), ucase('seoul');
select lower('Seoul'), lcase('SEOUL');
select substring('happly day', 3,2);

select lpad('hi',5,'*'), rpad('hi',5,'*');

select ltrim('   hi   '), rtrim('   hi   ');

select trim('   hi   ');

-- 숫자형 함수
select abs(1), abs(-1);
select mod(234,10);
select floor(1.234);
select ceiling(1.2345);
select pow(2,5);
select sign(-31), sign(12), sign(0);
select greatest(1,2,16);
select least(1,2,16);

-- 날짜 함수
select curdate(), current_date;
select curtime(), current_time;
select now(), sysdate(), current_timestamp;
select date_format(now(),'%x%m%d' ) , current_date;
select first_name, hire_date, date_add(hire_date, interval 5 MONTH) from employees;
select now(), cast(now() as date);
select cast(1-2 as unsigned);

-- 집계 함수

select AVG(salary) as '평균', sum(salary) as '합계' 
from salaries where emp_no =10060;

select emp_no, avg(salary) as savg from salaries where from_date like '1985%'
group by emp_no having savg > 1000;
