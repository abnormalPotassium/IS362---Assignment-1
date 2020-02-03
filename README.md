# IS362---Assignment-1
IS362 - Assignment 1

Part 1:
All queries used for Part 1 can be found in Week 1 Assignment.sql

1.How many airplanes have listed speeds?  
23

What is the minimum listed speed and the maximum listed speed?
The max is 432 and the minimum is 90.

2.What is the total distance flown by all of the planes in January 2013?
27,188,805 miles

What is the total distance flown by all of the planes in January 2013 where the tailnum is missing?
81,763 miles

3.What is the total distance flown for all planes on July 5, 2013 grouped by aircraft manufacturer? 
A PNG of these results is located in the repo as Part 1 Question 3.png

Write this statement first using an INNER JOIN, then using a LEFT OUTER JOIN.  How do your results compare?
The statement using an INNER JOIN contains only those flights that have a manufacturer linked to them, while the statement using LEFT OUTER JOIN includes flights without a linked manufacturer. The absence of a manufacturer is likely related to some flights not having tailnum recorded.

4.Write and answer at least one question of your own choosing that joins information from at least three of the tables in the flights database.
I wanted to question which manufacturer's planes work the best under adverse weather conditions. So I decided to figure out which manufacturer had the least amount of arrival delay on days where there was greater than one standard deviation above average wind speed. My query seemed to give the answer of Marz Barry with an average delay of -22.6579 minutes.

Part 2:
The query used for Part 2 can be found in Week 1 Assignment.sql
The csv file used for Part 2 is Week 1 Tableau.csv
The Tableau dashboard can be found here: https://public.tableau.com/views/Assignment1_15807024936570/Dashboard1?:display_count=y&publish=yes&:origin=viz_share_link
