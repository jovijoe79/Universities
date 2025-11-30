SELECT *
FROM north_america_universities;

-- DATA CLEANING
-- FIRST WE CREATE A SIMILAR TABLE TO THE ORIGINAL TABLE AND COPY ALL THE DATA INTO THIS NEW TABLE. THIS WILL ENSURE DATA INTEGRITY

CREATE TABLE north_america_universities_staging
LIKE north_america_universities;

INSERT INTO north_america_universities_staging
SELECT *
FROM north_america_universities;

SELECT *
FROM north_america_universities_staging;

-- NEXT WE CHECK FOR DUPLICATES
WITH CTE_1 AS
(
SELECT *, 
ROW_NUMBER() OVER(PARTITION BY `Name`, Country, Established, Academic_Staff, Number_of_Students, 
Minimum_Tuition_cost, Volumes_in_the_library, Endowment) AS row_num
FROM north_america_universities_staging
)
SELECT *
FROM CTE_1 
WHERE row_num > 1;

-- DELETE EMPTY DATA
DELETE
FROM north_america_universities_staging
WHERE Academic_Staff = ''
OR Number_of_Students = ''
OR Minimum_Tuition_cost = ''
OR Volumes_in_the_library = ''
OR Endowment = '';

ALTER TABLE north_america_universities_staging
MODIFY COLUMN Academic_Staff INT;


SELECT *
FROM north_america_universities_staging;

-- SINCE THERE ARE NO DUPLICATES WE PROCEED TO DATA EXPLORATION
-- 1) TOP 10 UNI WITH MOST ACADEMIC STAFF
SELECT `Name`, Academic_Staff
FROM north_america_universities_staging
ORDER BY Academic_Staff DESC
LIMIT 10;

-- 2) TOP 10 UNI WITH MOST STUDENTS
SELECT `Name`, Number_of_Students
FROM north_america_universities_staging
ORDER BY Number_of_Students DESC
LIMIT 10;

-- 3) TOP 10 OLDEST UNI 
SELECT `Name`, Established
FROM north_america_universities_staging
ORDER BY 2 ASC
LIMIT 10;

-- 4) TOP 10 UNI WITH MOST ACADEMIC STAFF AS WELL AS STUDENTS
SELECT `Name`, Academic_Staff, Number_of_Students
FROM north_america_universities_staging
ORDER BY Academic_Staff DESC, Number_of_Students DESC;


