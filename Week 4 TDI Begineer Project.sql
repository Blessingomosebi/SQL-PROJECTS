Select *
FROM [dbo].[Attrition1 ]
--1.Retrieve all records from the attrition table ordered by age in ascending order.
SELECT *
FROM [dbo].[Attrition1 ]
ORDER BY Age ASC;
--2.Display the attrition table, ordering the data alphabetically by department in ascending order.
SELECT *
FROM [dbo].[Attrition1 ]
ORDER BY Department ASC;
--3.Show the attrition table sorted by the number of years at the company in ascending order.
SELECT *
FROM [dbo].[Attrition1 ]
ORDER BY YearsAtCompany ASC;
--1.Retrieve all records from the attrition table ordered by age in descending order.
SELECT *
FROM [dbo].[Attrition1 ]
ORDER BY age DESC;
--Display the attrition table, ordering the data alphabetically by department in descending order.
SELECT *
FROM [dbo].[Attrition1 ]
ORDER BY Department DESC;
--Show the attrition table sorted by the number of years at the company in descending order.
SELECT *
FROM [dbo].[Attrition1 ]
ORDER BY YearsAtCompany DESC;
--1.Calculate the total number of years at the company for all employees.
SELECT SUM(YearsAtCompany) AS total_years_at_company
FROM [dbo].[Attrition1 ];
--2.Find the sum of the number of companies worked at by all companies.
SELECT SUM(NumCompaniesWorked) AS Total_Companies_Worked
FROM [dbo].[Attrition1 ];
--3.Calculate the total age of all employees in the attrition table.
SELECT SUM(Age) AS total_Age
FROM [dbo].[Attrition1 ];
--4.Find the total number of attritions (yes) in the table.
SELECT COUNT(Attrition) AS total_attritions
FROM [dbo].[Attrition1 ]
WHERE Attrition = '1';
--5.Calculate the sum of years at the company for employees from the medical education field.
SELECT SUM(YearsAtCompany) AS total_years_Medical_Education
FROM [dbo].[Attrition1 ]
WHERE EducationField ='Medical';
--6.Calculate the total number of attritions for employees in Sales department.
SELECT COUNT(Attrition) AS total_attritions
FROM [dbo].[Attrition1 ]
WHERE Attrition = '1' AND Department = 'Sales';
--1.Calculate the average age of employees in the attrition table.
 SELECT AVG(Age) AS average_age
FROM [dbo].[Attrition1 ];
--2.Find the average number of years worked at the company for all employees.
SELECT AVG(YearsAtCompany) AS average_years_worked
FROM [dbo].[Attrition1 ];
--3.Calculate the average number of companies worked at by employees.
SELECT AVG(NumCompaniesWorked) AS average_companies_worked
FROM [dbo].[Attrition1 ];
--4.Find the average age of employees in research and development department.
SELECT AVG(Age) AS avg_age_rd
FROM [dbo].[Attrition1 ]
WHERE Department = 'Research & Development';
--5.Calculate the average number of years at the company for male employees.
SELECT AVG(YearsAtCompany) AS average_years_worked_male
FROM [dbo].[Attrition1 ]
WHERE Gender = 'Male';
--6.Find the average age of employees from the life sciences education field.
SELECT AVG(Age) AS avg_age_life_sciences
FROM [dbo].[Attrition1 ]
WHERE EducationField = 'Life Sciences';
--1.Count the number of employees in the attrition table.
SELECT COUNT(*) AS total_employees
FROM [dbo].[Attrition1 ];
--2.Find the count of attrition in the table.
SELECT COUNT(Attrition) AS attrition_count
FROM [dbo].[Attrition1 ]
WHERE Attrition = '1';
--3.Count the number of employees in each department.
SELECT Department, COUNT(*) AS department_count
FROM [dbo].[Attrition1 ]
GROUP BY Department;
--4.Find the count of employees from the marketing education field.
SELECT COUNT(*) AS marketing_education_count
FROM [dbo].[Attrition1 ]
WHERE EducationField = 'Marketing';
--5.Count the number of employees who are married.
SELECT COUNT(*) AS Married_count
FROM [dbo].[Attrition1 ]
WHERE MaritalStatus = 'Married';
--1.Find the minimum age among all employees in the attrition table.
SELECT MIN(Age) AS min_age
FROM [dbo].[Attrition1 ];
--2.Find the minimum number of years at the company among all employees.
SELECT MIN(YearsAtCompany) AS min_years_at_company
FROM [dbo].[Attrition1 ];
--3.Find the minimum age of employees in the human resources department.
SELECT MIN(Age) AS min_Age_Hr
FROM [dbo].[Attrition1 ]
WHERE Department = 'Human Resource';
--1.Find the maximum age among all employees in the attrition table.
SELECT MAX(Age) AS max_age
FROM [dbo].[Attrition1 ];
--2.Find the maximum number of years at the company among all employees.
SELECT MAX(YearsAtCompany) AS max_years_at_company
FROM [dbo].[Attrition1 ];
--3.Find the maximum age of employees in the human resources department.
SELECT MAX(Age) AS max_Age_Hr
FROM [dbo].[Attrition1 ]
WHERE Department = 'Human Resource';
--4.Find the most recent year of joining the company among all employees. Find the minimum age among all employees in the attrition table.
SELECT MAX(YearsAtCompany) AS latest_join_year
FROM [dbo].[Attrition1 ];
SELECT MIN(Age) AS min_age
FROM [dbo].[Attrition1 ];


