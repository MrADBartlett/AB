SELECT 
destination , -- Hello
passanger ,
time as 'The Time'
FROM dataset_1
WHERE passanger = 'Alone'
OR time ='2pm'
ORDER BY time DESC;

SELECT destination, time,
AVG(temperature) , 
SUM(temperature) , 
COUNT(temperature),
COUNT(DISTINCT temperature)
FROM dataset_1 d 
WHERE time <>'10PM'
Group by destination,time
ORDER by time;

SELECT *
FROM dataset_1 d 
UNION 
SELECT *
FROM table_to_union ttu;

SELECT DISTINCT destination
FROM
(
SELECT *
FROM dataset_1 d 
UNION 
SELECT *
FROM table_to_union ttu
);

SELECT *
FROM table_to_join ttj;

SELECT destination, d.TIME , ttj.part_of_day 
From dataset_1 d 
LEFT JOIN table_to_join ttj 
ON d.time = ttj.time 

SELECT *
FROM dataset_1 d 
WHERE weather Like 'Sun%'; 

SELECT *
FROM dataset_1 d 
WHERE d.time Like '%P%'; 

SELECT DISTINCT temperature 
FROM dataset_1 d 
WHERE temperature BETWEEN 29 and 79;



