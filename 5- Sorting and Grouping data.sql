-- creating database country_person_details;
create database country_person_details;

use country_person_details;

-- creating tables Country and Persons
create table Country
(
Id int PRIMARY KEY,
Country_name varchar(50),
Population int,
Area int 
);

create table Persons
(
Id int PRIMARY KEY,
Fname varchar(50),
Lname varchar(50),
Population int,
Rating float,
Country_Id int,
Country_name varchar(50),
FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

-- inserting 10 rows to both the tables
 insert into Country (Id, Country_name, Population, Area)
 values
(1, 'Canada', 37742154, 9984670),
(2, 'India', 1380004385, 3287263),
(3, 'Canada', 37742154, 9984670),
(4, 'UK', 67886011, 243610),
(5, 'Australia', 25499884, 7692024),
(6, 'Brazil', 212559417, 8515767),
(7, 'UK', 145912025, 17098242),
(8, 'China', 1393409038, 9596961),
(9, 'Germany', 83783942, 357022),
(10, 'France', 67022000, 643801);
 
 select * from Country;
 
 insert into Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
 values
(1, 'John', 'Doe', 331002651, 4.8, 1, 'Canada'),
(2, 'Jane', 'Smith', 1380004385, 3.9, 2, 'India'),
(3, 'James', 'Brown', 37742154, 4.5, 3, 'Canada'),
(4, 'Emma', 'Davis', 67886011, 4.0, 4, 'UK'),
(5, 'Olivia', 'Wilson', 25499884, 5.0, 5, 'Australia'),
(6, 'Liam', 'Taylor', 212559417, 3.6, 6, 'Brazil'),
(7, 'Sophia', 'Martinez', 145912025, 4.2, 7, 'UK'),
(8, 'Mason', 'Garcia', 1393409038, 4.7, 8, 'China'),
(9, 'Isabella', 'Moore', 83783942, 4.1, 9, 'Germany'),
(10, 'Ethan', 'Jackson', 67022000, 4.6, 10, 'France');

select * from Persons;
 
 -- Questions ------------------------------------------------
 -- 1) Write an SQL query to print the first three characters of Country_name from the Country table.
 select Country_name, LEFT(Country_name, 3) as 'First 3 characters of Country_name' from Country;
 
 -- 2) Write an SQL query to concatenate first name and last name from Persons table.
 select Fname, Lname, CONCAT(Fname," ",Lname) as "Full Name" from Persons;
 
 -- 3) Write an SQL query to count the number of unique country names from Persons table.
 select COUNT(Country_name) as 'Total no: of country names in table', COUNT(DISTINCT Country_name) as 'Count of Unique Country names'  from Persons;
 
 -- 4) Write a query to print the maximum population from the Country table.
 select MAX(Population) as 'Maximum Population' from Country;
 
 -- 5) Write a query to print the minimum population from Persons table. 
 select MIN(Population) as 'Minimum Population' from Persons;
 
 -- 6) Insert 2 new rows to the Persons table making the Lname NULL. Then write another query to count Lname from Persons table. 
 -- inserting 2 new rows to Persons table making Lname NULL
 insert into Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
 values 
 (11, 'John', NULL, 100000, 4.2, 1, 'USA'),
 (12, 'Alicia', NULL, 50000, 3.9, 2, 'India');
 
 -- counting the non null Lname values from Persons table
 select COUNT(Lname) as 'Count_Lname' from Persons where Lname is NOT NULL; 
 
 -- 7) Write a query to find the number of rows in the Persons table
 select COUNT(*) as 'Total Persons' from Persons;
 
 -- 8) Write an SQL query to show the population of the Country table for the first 3 rows. (Hint: Use LIMIT) 
 select Country_name, Population from Country LIMIT 3;
 
 -- 9) Write a query to print 3 random rows of countries. (Hint: Use rand() function and LIMIT)
 select Country_name from Country ORDER BY RAND() LIMIT 3; 
 
 -- 10) List all persons ordered by their rating in descending order.
 select * from Persons ORDER BY Rating desc;
 
 -- 11) Find the total population for each country in the Persons table.
 select Country_name, SUM(Population) as 'Total Population' from Persons GROUP BY Country_name;
 
 -- 12) Find countries in the Persons table with a total population greater than 50,000 
 select Country_name, SUM(Population) as 'Total Population'  from Persons GROUP BY Country_name HAVING SUM(Population) > 50000; 
 
 -- 13) List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.
 -- updating the Country_name of the 5th Id as Canada for satisfying the condition that Canada has more than 2 persons
 update Persons set Country_name='Canada' where Id=5; 
 update Country set Country_name='Canada' where Id=5;
 
select Country_name, COUNT(*) as 'Total Persons', AVG(Rating) as 'Average Rating' from Persons GROUP BY Country_name HAVING COUNT(*) > 2 ORDER BY AVG(Rating) ASC;
