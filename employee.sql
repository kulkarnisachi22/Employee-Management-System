create database employee;

use employee;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE REGIONS;
DROP TABLE COUNTRIES;
DROP TABLE LOCATIONS;
DROP TABLE JOBS;
DROP TABLE DEPARTMENTS;
DROP TABLE EMPLOYEES;
DROP TABLE DEPENDENTS;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE regions (
	region_id INT,
	region_name VARCHAR (25) DEFAULT NULL
);

ALTER TABLE `regions`
ADD PRIMARY KEY (`region_id`);

INSERT INTO regions(region_id,region_name) VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name) VALUES (2,'Americas');
INSERT INTO regions(region_id,region_name) VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name) VALUES (4,'Middle East and Africa');

SELECT * FROM REGIONS;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE countries (
	country_id CHAR (2),
	country_name VARCHAR (40) DEFAULT NULL,
	region_id INT
);

ALTER TABLE `countries`
ADD PRIMARY KEY (`country_id`);

ALTER TABLE `countries`
ADD CONSTRAINT FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO countries(country_id,country_name,region_id) VALUES ('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('DE','Germany',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('DK','Denmark',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('EG','Egypt',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('FR','France',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('HK','HongKong',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IL','Israel',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IN','India',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IT','Italy',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('JP','Japan',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('KW','Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('MX','Mexico',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('NG','Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('NL','Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('SG','Singapore',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('UK','United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('US','United States of America',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('ZM','Zambia',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('ZW','Zimbabwe',4);

SELECT * FROM COUNTRIES;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE locations (
	location_id INT,
	street_address VARCHAR (40) DEFAULT NULL,
	postal_code VARCHAR (12) DEFAULT NULL,
	city VARCHAR (30) NOT NULL,
	state_province VARCHAR (25) DEFAULT NULL,
	country_id CHAR (2) NOT NULL
);

ALTER TABLE `locations`
ADD PRIMARY KEY (`location_id`);

ALTER TABLE `locations`
ADD CONSTRAINT FOREIGN KEY (country_id) REFERENCES countries (country_id) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');

SELECT * FROM LOCATIONS;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE jobs (
	job_id INT,
	job_title VARCHAR (35) NOT NULL,
	min_salary DECIMAL (8, 2) DEFAULT NULL,
	max_salary DECIMAL (8, 2) DEFAULT NULL
);

ALTER TABLE `jobs`
ADD PRIMARY KEY (`job_id`);

INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (1,'Public Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (4,'President',20000.00,40000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (5,'Administration Vice President',15000.00,30000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (7,'Finance Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (8,'Human Resources Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (12,'Public Relations Representative',4500.00,10500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (15,'Sales Manager',10000.00,20000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (16,'Sales Representative',6000.00,12000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (18,'Stock Clerk',2000.00,5000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (19,'Stock Manager',5500.00,8500.00);

SELECT * FROM JOBS;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE departments (
	department_id INT,
	department_name VARCHAR (30) NOT NULL,
	location_id INT DEFAULT NULL
);

ALTER TABLE `departments`
ADD PRIMARY KEY (`department_id`);

ALTER TABLE `departments`
ADD CONSTRAINT FOREIGN KEY (location_id) REFERENCES locations (location_id) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO departments(department_id,department_name,location_id) VALUES (1,'Administration',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (2,'Marketing',1800);
INSERT INTO departments(department_id,department_name,location_id) VALUES (3,'Purchasing',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (4,'Human Resources',2400);
INSERT INTO departments(department_id,department_name,location_id) VALUES (5,'Shipping',1500);
INSERT INTO departments(department_id,department_name,location_id) VALUES (6,'IT',1400);
INSERT INTO departments(department_id,department_name,location_id) VALUES (7,'Public Relations',2700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (8,'Sales',2500);
INSERT INTO departments(department_id,department_name,location_id) VALUES (9,'Executive',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (10,'Finance',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (11,'Accounting',1700);

SELECT * FROM DEPARTMENTS;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE employees (
	employee_id INT,
	first_name VARCHAR (20) DEFAULT NULL,
	last_name VARCHAR (25) NOT NULL,
	email VARCHAR (100) NOT NULL,
	phone_number VARCHAR (20) DEFAULT NULL,
	hire_date DATE NOT NULL,
	job_id INT NOT NULL,
	salary DECIMAL (8, 2) NOT NULL,
	manager_id INT DEFAULT NULL,
	department_id INT DEFAULT NULL
);

ALTER TABLE `EMPLOYEES`
ADD PRIMARY KEY (`employee_id`);

ALTER TABLE `EMPLOYEES`
ADD CONSTRAINT FOREIGN KEY (job_id) REFERENCES jobs (job_id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT FOREIGN KEY (department_id) REFERENCES departments (department_id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT FOREIGN KEY (manager_id) REFERENCES employees (employee_id);

INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES 
(100,'Steven','King','steven.king@google.com','515.123.4567','1987-06-17',4,24000.00,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@google.com','515.123.4568','1989-09-21',5,17000.00,100,9),
(102,'Lex','De Haan','lex.de haan@google.com','515.123.4569','1993-01-13',5,17000.00,100,9),
(103,'Alexander','Hunold','alexander.hunold@google.com','590.423.4567','1990-01-03',9,9000.00,102,6),
(104,'Bruce','Ernst','bruce.ernst@google.com','590.423.4568','1991-05-21',9,6000.00,103,6),
(105,'David','Austin','david.austin@google.com','590.423.4569','1997-06-25',9,4800.00,103,6),
(106,'Valli','Pataballa','valli.pataballa@google.com','590.423.4560','1998-02-05',9,4800.00,103,6),
(107,'Diana','Lorentz','diana.lorentz@google.com','590.423.5567','1999-02-07',9,4200.00,103,6),
(108,'Nancy','Greenberg','nancy.greenberg@google.com','515.124.4569','1994-08-17',7,12000.00,101,10),
(109,'Daniel','Faviet','daniel.faviet@google.com','515.124.4169','1994-08-16',6,9000.00,108,10),
(110,'John','Chen','john.chen@google.com','515.124.4269','1997-09-28',6,8200.00,108,10),
(111,'Ismael','Sciarra','ismael.sciarra@google.com','515.124.4369','1997-09-30',6,7700.00,108,10),
(112,'Jose Manuel','Urman','jose manuel.urman@google.com','515.124.4469','1998-03-07',6,7800.00,108,10),
(113,'Luis','Popp','luis.popp@google.com','515.124.4567','1999-12-07',6,6900.00,108,10),
(114,'Den','Raphaely','den.raphaely@google.com','515.127.4561','1994-12-07',14,11000.00,100,3),
(115,'Alexander','Khoo','alexander.khoo@google.com','515.127.4562','1995-05-18',13,3100.00,114,3),
(116,'Shelli','Baida','shelli.baida@google.com','515.127.4563','1997-12-24',13,2900.00,114,3),
(117,'Sigal','Tobias','sigal.tobias@google.com','515.127.4564','1997-07-24',13,2800.00,114,3),
(118,'Guy','Himuro','guy.himuro@google.com','515.127.4565','1998-11-15',13,2600.00,114,3),
(119,'Karen','Colmenares','karen.colmenares@google.com','515.127.4566','1999-08-10',13,2500.00,114,3),
(120,'Matthew','Weiss','matthew.weiss@google.com','650.123.1234','1996-07-18',19,8000.00,100,5),
(121,'Adam','Fripp','adam.fripp@google.com','650.123.2234','1997-04-10',19,8200.00,100,5),
(122,'Payam','Kaufling','payam.kaufling@google.com','650.123.3234','1995-05-01',19,7900.00,100,5),
(123,'Shanta','Vollman','shanta.vollman@google.com','650.123.4234','1997-10-10',19,6500.00,100,5),
(126,'Irene','Mikkilineni','irene.mikkilineni@google.com','650.124.1224','1998-09-28',18,2700.00,120,5),
(145,'John','Russell','john.russell@google.com',NULL,'1996-10-01',15,14000.00,100,8),
(146,'Karen','Partners','karen.partners@google.com',NULL,'1997-01-05',15,13500.00,100,8),
(176,'Jonathon','Taylor','jonathon.taylor@google.com',NULL,'1998-03-24',16,8600.00,100,8),
(177,'Jack','Livingston','jack.livingston@google.com',NULL,'1998-04-23',16,8400.00,100,8),
(178,'Kimberely','Grant','kimberely.grant@google.com',NULL,'1999-05-24',16,7000.00,100,8),
(179,'Charles','Johnson','charles.johnson@google.com',NULL,'2000-01-04',16,6200.00,100,8),
(192,'Sarah','Bell','sarah.bell@google.com','650.501.1876','1996-02-04',17,4000.00,123,5),
(193,'Britney','Everett','britney.everett@google.com','650.501.2876','1997-03-03',17,3900.00,123,5),
(200,'Jennifer','Whalen','jennifer.whalen@google.com','515.123.4444','1987-09-17',3,4400.00,101,1),
(201,'Michael','Hartstein','michael.hartstein@google.com','515.123.5555','1996-02-17',10,13000.00,100,2),
(202,'Pat','Fay','pat.fay@google.com','603.123.6666','1997-08-17',11,6000.00,201,2),
(203,'Susan','Mavris','susan.mavris@google.com','515.123.7777','1994-06-07',8,6500.00,101,4),
(204,'Hermann','Baer','hermann.baer@google.com','515.123.8888','1994-06-07',12,10000.00,101,7),
(205,'Shelley','Higgins','shelley.higgins@google.com','515.123.8080','1994-06-07',2,12000.00,101,11),
(206,'William','Gietz','william.gietz@google.com','515.123.8181','1994-06-07',1,8300.00,205,11);

SELECT * FROM EMPLOYEES;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE dependents (
	dependent_id INT,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
    age INT,
	relationship VARCHAR (25) NOT NULL,
	employee_id INT NOT NULL
);

ALTER TABLE `dependents`
ADD PRIMARY KEY (`dependent_id`);

ALTER TABLE `dependents`
ADD CONSTRAINT FOREIGN KEY (employee_id) REFERENCES employees (employee_id) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (1,'Penelope','Gietz',3,'Child',206);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (2,'Nick','Higgins',5,'Child',205);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (3,'Ed','Whalen',8,'Child',200);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (4,'Jennifer','King',18,'Child',100);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (5,'Johnny','Kochhar',19,'Child',101);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (6,'Bette','De Haan',21,'Child',102);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (7,'Grace','Faviet',1,'Child',109);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (8,'Matthew','Chen',15,'Child',110);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (9,'Joe','Sciarra',16,'Child',111);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (10,'Christian','Urman',2,'Child',112);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (11,'Zero','Popp',23,'Child',113);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (12,'Karl','Greenberg',19,'Child',108);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (13,'Uma','Mavris',4,'Child',203);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (14,'Vivien','Hunold',6,'Child',103);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (15,'Cuba','Ernst',7,'Child',104);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (16,'Fred','Austin',18,'Child',105);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (17,'Helen','Pataballa',20,'Child',106);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (18,'Dan','Lorentz',21,'Child',107);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (19,'Bob','Hartstein',22,'Child',201);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (20,'Lucille','Fay',23,'Child',202);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (21,'Kirsten','Baer',17,'Child',204);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (22,'Elvis','Khoo',19,'Child',115);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (23,'Sandra','Baida',18,'Child',116);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (24,'Cameron','Tobias',10,'Child',117);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (25,'Kevin','Himuro',11,'Child',118);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (26,'Rip','Colmenares',12,'Child',119);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (27,'Julia','Raphaely',5,'Child',114);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (28,'Woody','Russell',2,'Child',145);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (29,'Alec','Partners',18,'Child',146);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (30,'Sandra','Taylor',19,'Child',176);
INSERT INTO dependents(dependent_id,first_name,last_name,age,relationship,employee_id) VALUES (31,'Pat','Fay',19,'Child',202);

SELECT * FROM DEPENDENTS;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Nested Queries

# 2(a)
SELECT first_name, last_name
FROM EMPLOYEES
WHERE phone_number IS NULL;

SELECT first_name, last_name
FROM EMPLOYEES
WHERE manager_id IS NULL;

# 2(b)
SELECT first_name, last_name
FROM EMPLOYEES
WHERE employee_id IN ( SELECT employee_id
					   FROM DEPENDENTS
                       WHERE age > 18 );

# 2(c)
SELECT first_name, last_name, salary 
FROM EMPLOYEES
WHERE department_id = 3; 

SELECT first_name, last_name,salary
FROM EMPLOYEES
WHERE salary > ALL ( SELECT salary
					 FROM EMPLOYEES
                     WHERE department_id = 3 );

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# AGGREGATE FUNCTIONS

# 3(a)(i)
SELECT salary
FROM EMPLOYEES
WHERE department_id = 2;

SELECT first_name, last_name, salary, department_id 
FROM EMPLOYEES 
WHERE salary IN ( SELECT MIN(salary) 
				  FROM EMPLOYEES 
                  GROUP BY department_id )
ORDER BY department_id ASC;

# 3(a)(ii)
SELECT first_name, last_name, salary, department_id 
FROM EMPLOYEES 
WHERE salary IN ( SELECT MAX(salary) 
				  FROM EMPLOYEES 
                  GROUP BY department_id )
ORDER BY department_id ASC;

# 3(b)
SELECT COUNT(*)
FROM EMPLOYEES as E, DEPARTMENTS as D
WHERE E.department_id = D.department_id
GROUP BY D.department_id
ORDER BY D.department_id ASC;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Correlated Sub-Queries

# 4(a)
SELECT E.employee_id, E.first_name, E.last_name
FROM EMPLOYEES AS E, DEPENDENTS AS D
WHERE E.employee_id = D.employee_id AND E.first_name = D.first_name;

use employee;

# 4(b)
SELECT D.department_name, L.city, L.state_province
FROM DEPARTMENTS AS D
INNER JOIN  LOCATIONS AS L
ON  D.location_id = L.location_id AND L.postal_code IS NOT NULL
GROUP BY D.department_name
ORDER BY D.department_name ASC;


# 4(c)
SELECT employee_id, first_name, last_name
FROM EMPLOYEES as E
WHERE NOT EXISTS ( SELECT *
				   FROM DEPENDENTS as D
                   WHERE E.employee_id = D.employee_id);
                   
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Union 

# 5(a)


#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Stored Procedure

# 6(a)

use employee;

# adding a column to store the number of years spent in the company
ALTER TABLE employees
ADD time_spent INT DEFAULT 1;

DELIMITER $$
CREATE PROCEDURE calc_time()
BEGIN 
UPDATE EMPLOYEES SET time_spent=(year(current_timestamp)-year(hire_date));
SELECT * FROM EMPLOYEES; 
END; $$
DELIMITER ;

SELECT * FROM EMPLOYEES;

drop procedure calc_time;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TRIGGER RAISE_LIMIT
-- AFTER UPDATE  salary	 ON EMPLOYEES
-- -- REFERENCING NEW AS N OLD AS O
-- FOR EACH ROW
-- WHEN (N.SALARY > 1.1 * O.SALARY)
-- SIGNAL SQLSTATE '75000' SET MESSAGE_TEXT='Salary increase>10%' 



-- use employee;
delimiter //
create trigger trigger1
before update on employees 
for each row 
begin 
if new.department_id<3 then set new.department_id=10;
end if ;
end //

set sql_safe_updates=1;
-- update employees set department_id=10 where first_name='Jennifer';
use employee;
select * from employees;
update employees set department_id=2 where employee_id=201;


