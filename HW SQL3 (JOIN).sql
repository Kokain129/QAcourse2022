--SQL_HW_3 Joins

--
-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary
from employee_salary
join employees on 
employee_id = employees.id
join salary on
salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary
from employee_salary
join employees on 
employee_id = employees.id
join salary on
salary_id = salary.id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary
from salary 
left join roles_salary on
salary.id = id_salary
left join roles on 
roles_salary.id_role = roles.id
where id_role is null 
order by monthly_salary desc;


-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary
from salary 
left join roles_salary on
salary.id = id_salary
left join roles on 
roles_salary.id_role = roles.id
where id_role is null and monthly_salary < 2000
order by monthly_salary desc;

-- 5. Найти всех работников кому не начислена ЗП.

select employees.id, employee_name, monthly_salary 
from employees
left join employee_salary on
employees.id = employee_id
left join salary on
salary_id = salary.id
where monthly_salary is null;


-- 6. Вывести всех работников с названиями их должности.

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like '%Java %';

-- 8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like '%Python %';

-- 9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like '%QA %';

-- 10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like '%Manual QA %';

-- 11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like '%Automation QA %';

-- 12. Вывести имена и зарплаты Junior специалистов

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like 'Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like 'Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like 'Senior%';

-- 15. Вывести зарплаты Junior Java разработчиков

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like 'Junior Java %';

-- 16. Вывести зарплаты Python разработчиков

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like '%Junior Python %';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like 'Middle JavaScript %';

-- 19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like 'Senior Java %';


-- 20. Вывести зарплаты Junior QA инженеров

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like 'Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like 'Junior%';

-- 22. Вывести сумму зарплат JS разработчиков

select employee_name, role_name 
from employees 
join roles_employee on 
employees.id = employee_id
join roles on
roles_employee.role_id = roles.id
where role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров

select role_name, monthly_salary 
from roles
join roles_salary on
roles.id = roles_salary.id_role
join salary on
id_salary = salary.id
where role_name like 'Junior%QA%' and monthly_salary = (select min(monthly_salary) from salary);

-- 24. Вывести максимальную ЗП QA инженеров

select role_name, monthly_salary 
from roles
join roles_salary on
roles.id = roles_salary.id_role
join salary on
id_salary = salary.id
where role_name like '%QA%' and monthly_salary = (select max(monthly_salary) from salary);

-- 25. Вывести количество QA инженеров

-- вывожу кол-во по ролям:

select role_name, count(role_name)
from roles
join roles_employee on
roles.id = role_id
group by role_name
having role_name like '%QA%';

-- вывожу общее кол-во:

select count(role_name) from roles 
join roles_employee
on
roles.id = role_id
where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
-- вывожу кол-во по ролям:

select role_name, count(role_name)
from roles
join roles_employee on
roles.id = role_id
group by role_name
having role_name like 'Middle%';

-- вывожу общее кол-во:

select count(role_name) from roles 
join roles_employee
on
roles.id = role_id
where role_name like 'Middle%';

-- 27. Вывести количество разработчиков

-- вывожу кол-во по ролям:

select role_name, count(role_name)
from roles
join roles_employee on
roles.id = role_id
group by role_name
having role_name like '%developer%';

-- вывожу общее кол-во:

select count(role_name) from roles 
join roles_employee
on
roles.id = role_id
where role_name like '%developer%';


-- 28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary)
from roles
join roles_salary on
roles.id = roles_salary.id_role
join salary on
id_salary = salary.id
where role_name like '%developer%'

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, monthly_salary, role_name
from roles_employee
join  roles on
roles_employee.role_id = roles.id
join employees on
employees.id = roles_employee.employee_id
join employee_salary on
employees.id =  employee_salary.employee_id
join salary on
employee_salary.salary_id = salary.id
order by monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, monthly_salary, role_name
from roles_employee
join  roles on
roles_employee.role_id = roles.id
join employees on
employees.id = roles_employee.employee_id
join employee_salary on
employees.id =  employee_salary.employee_id
join salary on
employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, monthly_salary, role_name
from roles_employee
join  roles on
roles_employee.role_id = roles.id
join employees on
employees.id = roles_employee.employee_id
join employee_salary on
employees.id =  employee_salary.employee_id
join salary on
employee_salary.salary_id = salary.id
where monthly_salary < 2300
order by monthly_salary asc;


-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, monthly_salary, role_name
from roles_employee
join  roles on
roles_employee.role_id = roles.id
join employees on
employees.id = roles_employee.employee_id
join employee_salary on
employees.id =  employee_salary.employee_id
join salary on
employee_salary.salary_id = salary.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;