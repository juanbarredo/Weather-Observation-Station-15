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

SELECT LONG_N, LAT_N
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

SELECT CAST(MAX(LAT_N) AS DECIMAL(7,4))
	FROM STATION
	WHERE LONG_N < 137.2345;

--Ok,
--wrong first few attempts.

--ok, first problem I see with my approach is that
--it is LAT_N that should be less than 137.2345.

--in line 42, I clearly have LONG_N.
--I need to rething my approach which will take time.

--I might solve this one tomorrow.