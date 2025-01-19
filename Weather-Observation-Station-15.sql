----------01 07 2025-------------------------------
--Weather Observation Station 15------

--Query the Western Longitude
--(LONG_W)
--for the largest
--Northern Latitude
--(LAT_N)
--in STATION
--that is less than 
--137.2345
--Round your answer to 4 decimal places.

--SELECT lists: CAST(LAT_N AS DECIMAL(7, 4))
--selections: largest LONG_W, that is < 137.2345

--maybe a first step is to see *

USE Weather_Observation_Station_2;
SELECT *
	FROM STATION;

SELECT LONG_W, LAT_N
	FROM STATION;

--Ok,
--So,
--query LONG_N 
--for the largest 
--Northern Latitude (LAT_N)
--that is less than 137.2345

--I think next I am going to do steps in line
--28 - 30.

--I may break these two up as well.

--would it be with a WHERE?

--SELECT CAST(MAX(LAT_N) AS DECIMAL(7,4))
--	FROM STATION
--	WHERE LONG_W < 137.2345;

--Ok,
--wrong first few attempts.

--ok, first problem I see with my approach is that
--it is LAT_N that should be less than 137.2345.

--in line 42, I clearly have LONG_W.
--I need to rething my approach which will take time.

--I might solve this one tomorrow.

--------------------01 12 2025----------------------------------------

--Query the Western Longitude (LONG_W)
--for the largest Northerd Latitude (LAT_N)
--in STATION	
--that is less than 137.2345

--at this point in time
--I think I need to work
--on the WHERE
--because that is how I think
--the weird angle of approach will be reached

--it's just weird that they are asking me to query LONG_W instead just querying LAT_N
--directly since the final answer they want is in LAT_N

--yeah, because the fact that I am having to search for the largest LAT_N that is less than 137.2345

--that is another aspect that is making me feel confused.

--at the same time, however, I am getting an idea that an initial approach that I can't explain isn't ideal.

--it might just be something like

USE Weather_Observation_Station_2;
SELECT	MAX(LAT_N)
	FROM STATION
	WHERE LAT_N < 137.2345;

--the above should basically do it
--except there is the pesky 
--"query LONG_W for a number in LAT_N that is less than 137.2345"

--I am thinking I would have to do a subquery

--USE Weather_Observation_Station_2;
--SELECT	MAX(LAT_N)
--	FROM STATION
--	WHERE LAT_N < 137.2345
--	AND ?

--I currently lack the imagnation to see a clear way out because I 
--do not see what they want.

--maybe I need to build this up very slowly

--"query the Western Longitude (LONG_W)
--for the largest Northern Laitude (LAT_N)"

--so, it is true that LAT_N and LONG_W are normalized.
--there are 499 rows of each.

--I can (but how) logically ask LONG_W for anything in LAT_N.

--I can ask LONG_W for ... and this is where I am not seeing the next logic.

--Either way, I think next time I am going to work on fixing the labels of the table STATION.

--------------------------------------01 19 2025----------------------------------------------------------------

--OK,

--I need to get reaquainted with the prolem again.

--ok, I am looking at my notes and found that I scribbled a query down during the
--reflect phase of the pomodoro on 01/16/2025.

--SELECT MAX(LAT_N)
--	FROM STATION
--	WHERE LONG_W<137.2345;

--I think I see a problem
--line 124 is querying LONG_W

--I think it is LAT_N that should be less than 137.2345
--not LONG_W.

--then should it be a subquery

--SELECT LAT_N
--	FROM STATION
--	WHERE LONG_W =
--	(SELECT MAX(LAT_N)
--		FROM STATION);

--for now,
--I think WHERE is how to
--operationalize having to query one field
--for the contents in another.

--I feel if I don't make really good progress today,
--I will look up the answer.

--I think I am just going to write
--a query disregarding the 
--"Query the western Longitude for the largest northern latitude"
--instead, I will do "find the largest northern latitude in STATION that is less than 137.2345"

SELECT ROUND(CAST(LAT_N AS DECIMAL(7,4)),4)
	FROM STATION
	WHERE LAT_N < 137.2345;

	--But I don't think MAX is the right funciton.
	--the 

--Ok,
--I tried and found so many interesting issues.

--the round your answer to 4 decimal places.

--I am re-invigorated by the problem.