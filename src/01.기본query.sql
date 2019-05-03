-- 1
select concat(first_name, ' ' , last_name) as name from employees where emp_no = 10944;

-- 2
select concat(first_name, ' ' , last_name) as '이름', gender as '성별', hire_date as '입사일' from employees order by hire_date;
-- 3
select count(gender) from employees group by gender;
-- 4
select count(*) from salaries where to_date = '9999-01-01';
-- 5
select count(*) from departments;
-- 6
select count(dept_no) from dept_manager;
-- 7

-- 8

-- 9

-- 10
