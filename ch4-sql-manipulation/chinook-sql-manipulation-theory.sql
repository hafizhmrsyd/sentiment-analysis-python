/*this is a comment, please run per line for the display*/

--SELECT section
SELECT * FROM customers
/* wildcard (*) used for all columns inclusion */

SELECT CustomerId FROM customers
/* CustomerId is a specific column in customers table */

SELECT CustomerId, FirstName FROM customers
/* two columns from customers table selected on the line above */

SELECT a.CustomerId, b.EmployeeId from customers a, employees b
/* a(dot) and b(dot) are aliases created on the last query where...
 ...customers table defined as a and employees' defined as b */

SELECT * FROM customers where CustomerId < 10
/* where method is just the same as if then condition */

/* pay attention to these both queries */
SELECT City FROM customers WHERE City = "Paris";
/*with*/
SELECT DISTINCT City FROM customers WHERE City = "Paris";
/* DISTINCT method helps us to remove all same name data so that it becomes unique per se */

SELECT * FROM customers ORDER by City ASC;
/* ascending order by city column */
SELECT * FROM customers ORDER by FirstName DESC;
/* descending order by firstname column */

/*JOIN
only related data will be joined*/

SELECT *
FROM albums a
INNER JOIN artists b
on a.ArtistId = b.ArtistId;
/*this is inner join, it is like taking the data from the both diagram
venn intersection. Also, many lines might be counted as one line if there
was a SQL end mark in the end of the lines*/

SELECT * FROM albums a LEFT JOIN artists b on a.ArtistId = b.ArtistId;
--ON feature must be at same name column different tables? I forgot

--another feature is RIGHT JOIN and FULL JOIN

/*OPERATOR
for comparison operators, same.
for logical operators:
ALL = return if all expressions are true
AND = return if two exps are true
OR = return if at least one is true
ANY = return if any exp is true (perhaps randomly)
BETWEEN = return if the value does exist in the middle
EXISTS = return if the sub query returns the value 
IN = return if there is a value inside list
like = return if the value is equal with the pattern
NOT = to dis- the true operator
*/

--MANIPULATION
--INSERT
INSERT INTO artists (ArtistId, Name)
VALUES (300, 'Slank');
/*formula:

INSERT INTO table (column1, column2,...)
values(any value1, value2,...)
*/

SELECT name from artists where name = 'Slank';
--it has been inserted now

--UPDATE
UPDATE artists
SET name = 'Noah'
WHERE ArtistId = 300;
/*formula:

UPDATE table
SET column_1 = new_value_1,
    column_2 = new_value_2
WHERE
    search_condition */

SELECT name from artists where ArtistId = 300;
--It has been updated with Noah, not Slank anymore

--DELETE
DELETE FROM artists
WHERE ArtistId = 300;
/*formula:

DELETE FROM table
WHERE search_condition
*/

SELECT name from artists where ArtistId = 300;
--nothing's appeared, means that it has been deleted

--TRANSACTION
/*formula:

BEGIN TRANSACTION;
-- manipulation query kita
COMMIT; --or
ROLLBACK;
*/
--BEGIN TRANSACTION is to start the process of the notation
--of manipulated data to the database.
--COMMIT is to apply the changes.
--ROLLBACK is to return the condition before the change.

BEGIN TRANSACTION;
COMMIT;
ROLLBACK;

--still confused with those functions