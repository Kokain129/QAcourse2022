--TASK: Таблица employees

--1)	Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar(50) not null
);


--2)	Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values
('Pedro Young'),
('Steven Elliott'),
('Sonia Cruz'),
('Wanda Schultz'),
('Terrence Bates'),
('Pauline Cobb'),
('Erma Bradley'),
('Julian Reynolds'),
('Rhonda Castillo'),
('Mack Hoffman'),
('Donnie Burgess'),
('Jordan Keller'),
('Guy Anderson'),
('Nathan Knight'),
('Lori Caldwell'),
('Nicholas Mills'),
('Andres Cohen'),
('Jonathon Blair'),
('Blake Ballard'),
('Latoya Goodwin'),
('Victor Benson'),
('Andrew Greene'),
('Glenn Mendoza'),
('Jody Snyder'),
('Shannon Marshall'),
('Patsy Boone'),
('Todd French'),
('Rochelle Obrien'),
('Joe Guerrero'),
('Sam Simon'),
('Eloise Summers'),
('Rita Greer'),
('Nathaniel Pena'),
('Rex Fields'),
('Regina Wade'),
('Whitney Hudson'),
('Wendy Stanley'),
('Cecil Tyler'),
('Shelly Hicks'),
('Edwin Sullivan'),
('Lance Mendez'),
('Salvador Jacobs'),
('Hugh Robertson'),
('Felicia Wilkins'),
('Brian Rice'),
('Timothy Copeland'),
('Marilyn Griffin'),
('Rickey Evans'),
('Timmy Allen'),
('Joseph Lyons'),
('Gretchen Carson'),
('Homer Medina'),
('Mable Patton'),
('Darrell Hubbard'),
('Caleb Perez'),
('Theresa Ruiz'),
('Lowell Dixon'),
('Tracy Weber'),
('Rolando Santos'),
('Sue Kim'),
('Mary Gordon'),
('Jaime Harrington'),
('Carl Holmes'),
('Boyd Riley'),
('Joann Lee'),
('Everett Hoga'),
('Al Stokes'),
('Curtis Freeman'),
('Patrick Reed'),
('Lionel Hart');

select * from employees 


--TASK: Таблица salary

--3)	Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null


create table salary (
id serial primary key,
monthly_salary int not null
);

--4)	Наполнить таблицу salary 15 строками:

insert into salary (monthly_salary)
values
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary;


--TASK: Таблица employee_salary

--4)	Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null


create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--5)	5)	Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id


insert into employee_salary (employee_id, salary_id)
values
(3, 7),
(1, 4),
(5, 9),
(40, 13),
(23,4),
(13,1),
(38,5),
(41,2),
(67,3),
(66,6),
(36,7),
(25,4),
(50,11),
(51,12),
(53,13),
(49,14),
(48,15),
(8,16),
(7,7),
(6,9),
(45,8),
(55,4),
(69,4),
(70,6),
(101,7),
(97,5),
(91,1),
(80,3),
(110,4),
(129,8),
(105,6),
(99,3),
(79,16),
(71,15),
(33,7),
(16,1),
(26,4),
(15,13),
(52,10),
(11,2);

select * from employee_salary;


--TASK: Таблица roles
--6)	Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles (
id serial primary key,
role_name int not null unique
);


--7)	Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);


--8)	Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;

--TASK: Таблица roles_employee
--
--9)	Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
); 

--10)	Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values
(3, 7),
(1, 17),
(5, 9),
(40, 13),
(23,20),
(13,1),
(38,5),
(41,2),
(67,3),
(66,6),
(36,7),
(25,4),
(50,11),
(51,12),
(53,19),
(49,14),
(47,20),
(8,16),
(7,7),
(6,9),
(45,8),
(55,4),
(69,15),
(70,6),
(58,7),
(48,16),
(35,18),
(34,14),
(31,4),
(30,8),
(29,6),
(28,3),
(27,16),
(24,15),
(33,7),
(16,1),
(26,19),
(15,13),
(52,10),
(11,2);


