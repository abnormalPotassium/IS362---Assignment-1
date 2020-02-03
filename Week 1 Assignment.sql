USE flights;

#Part 1 - Question 1
#Gives the total amount of planes that have a listed speed along with the minimum and maximum listed speeds
SELECT COUNT(speed), MIN(speed), MAX(speed) FROM planes
WHERE speed IS NOT NULL;

#Part 1 - Question 2
#Gives total distance flown by all planes on January 2013
SELECT SUM(distance) FROM flights
WHERE year = 2013 and month = 1;

#Gives total distance flown by planes without tail numbers recorded on January 2013
SELECT SUM(distance) FROM flights
WHERE year = 2013 and month = 1 and NULLIF(tailnum, '') IS NULL;

#Part 1 - Question 3
#Gives total distance flown for planes on July 5,2013 grouped by aircraft manufacturer (INNER JOIN)
SELECT p.manufacturer, SUM(f.distance) FROM flights f
INNER JOIN planes p on p.tailnum = f.tailnum
WHERE f.year = 2013 AND f.month = 7 AND f.day = 5
GROUP BY p.manufacturer;

#Gives total distance flown for planes on July 5,2013 grouped by aircraft manufacturer (LEFT OUTER JOIN)
SELECT p.manufacturer, SUM(f.distance) FROM flights f
LEFT JOIN planes p on p.tailnum = f.tailnum
WHERE f.year = 2013 and f.month = 7 AND f.day = 5
GROUP BY p.manufacturer;

#Part 1 - Question 4
#Gives standard deviation and average wind speed on a given day from the weather dataset
SELECT STDDEV(wind_speed), AVG(wind_speed)
FROM `flights`.`weather`
LIMIT 230000;

#Gives average arrival delays grouped by manufactures on days with high wind speeds (One standard deviation above average wind speed)
SELECT p.manufacturer, avg(f.arr_delay) FROM flights f
INNER JOIN planes p on p.tailnum = f.tailnum
INNER JOIN weather w on w.year = f.year AND w.month = f.month AND w.day = f.day
WHERE w.wind_speed > 21.66
GROUP BY p.manufacturer
ORDER BY avg(f.arr_delay);

#Part 2
#Compare average monthly departure delay across three New York airports
SELECT month, origin, AVG(dep_delay) FROM flights
WHERE year = 2013
GROUP BY origin, month
ORDER BY month;