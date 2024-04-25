--1.Write an SQL query to select all columns from the table named locations
 SELECT *
FROM Locations;

--2.Retrieve only the country and population columns from the table.
SELECT country, population
FROM Locations;

--3.Write an SQL query to select regions where the population is greater than 500,000
SELECT region
FROM Locations
WHERE population > 500000;

--4.Write an SQL query to select regions with a population density less than 50
SELECT region
FROM Locations
WHERE density < 50;

--5.Retrieve data for countries in the Canterbury region
SELECT country
FROM Locations
WHERE region ='Canterbury';

--6.How would you sort the results to display countries in descending order based on population?
SELECT countryFROM Locations
ORDER BY population DESC;

--7.Sort the records alphabetically by country
SELECT *
FROM  Locations
ORDER BY country ASC;

--8.Retrieve countries ordered by their population density in descending order but only include countries with a population greater than 500,000
SELECT country
FROM Locations
WHERE population > 500000
ORDER BY density DESC;

--9.Retrieve the region with the highest total population.
SELECT TOP 1 region, SUM(Population) AS TotalPopulation
FROM Locations
GROUP BY region
ORDER BY SUM(Population) DESC;






