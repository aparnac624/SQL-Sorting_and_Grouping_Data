# SQL-Sorting_and_Grouping_Data

Overview
----------------------------------------------
This project involves managing two tables: Country and Persons. The Country table stores information about countries, while the Persons table contains details of individuals and their associated countries.

Tables Structure
---------------------------------------------
1. Country Table
   - Id: Country unique identifier (Primary Key)
   - Country_name: Name of the country
   - Population: Population of the country
   - Area: Area of the country

2. Persons Table
   - Id: Person unique identifier (Primary Key)
   - Fname: First name of the person
   - Lname: Last name of the person
   - Population: Population of the country the person belongs to
   - Rating: Rating of the person
   - Country_Id: Foreign key referencing Country(Id)
   - Country_name: Country name the person belongs to

  
SQL Queries performed
-------------------------------------------------------
1. Print the first three characters of Country_name from the Country table
2. Concatenate first name and last name from the Persons table
3. Count the number of unique country names from the Persons table
4. Print the maximum population from the Country table
5. Print the minimum population from the Persons table
6. Insert 2 new rows to the Persons table with NULL in Lname, then count Lname values
7. Find the number of rows in the Persons table
8. Show the population of the Country table for the first 3 rows
9. Print 3 random rows of countries
10. List all persons ordered by their rating in descending order
11. Find the total population for each country in the Persons table
12. Find countries in the Persons table with a total population greater than 50,000
13. List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by average rating in ascending order


 
 Explanation of Queries used
-------------------------------------------------------
   1. LEFT Function: This query uses the LEFT() function to extract the first three characters of the Country_name from the Country table.
   2. CONCAT Function: The CONCAT() function is used to combine the Fname and Lname columns from the Persons table to create a full name.
   3.COUNT DISTINCT: This query counts the number of unique country names in the Persons table using COUNT(DISTINCT).
   4. MAX Function: The MAX() function is used to find the country with the highest population from the Country table.
   5. MIN Function: The MIN() function is used to find the person with the smallest population in the Persons table.
   6. NULL Handling: This query first inserts two rows where the Lname is NULL and then counts how many persons have a non-null Lname.
   7. COUNT Rows: This query counts the total number of rows (persons) in the Persons table.
   8. LIMIT Clause: The LIMIT clause is used to retrieve the population of the first 3 rows from the Country table.
   9. Random Rows: The RAND() function is used to randomly order the rows in the Country table, and the LIMIT 3 clause restricts the output to 3 rows.
  10. ORDER BY: This query orders the Persons table by the Rating column in descending order.
  11. SUM Population: This query calculates the total population for each country by summing up the Population field in the Persons table.
  12. HAVING Clause: The HAVING clause is used to filter countries that have a total population greater than 50,000 in the Persons table.
  13. Grouping and Ordering: This query lists the total number of persons and average rating for each country, but only for countries that have more than 2 persons. It is ordered by the average rating in ascending order.



Conclusion
---------------------------------------------------------
This set of SQL queries allows you to perform common operations on the Country and Persons tables, including aggregations, sorting, and filtering based on specific conditions. By leveraging these queries, you can efficiently manage and analyze the data for various business or analytical purposes.

Screenshots of Country and Persons and corresponding query outputs have been attached for reference. 







