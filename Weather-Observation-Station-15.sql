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

--USE Weather_Observation_Station_2;
--SELECT *
--	FROM STATION;

--SELECT LONG_W, LAT_N
--	FROM STATION;

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

--USE Weather_Observation_Station_2;
--SELECT	MAX(LAT_N)
--	FROM STATION
--	WHERE LAT_N < 137.2345;

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

--SELECT ROUND(CAST(LAT_N AS DECIMAL(7,4)),4)
--	FROM STATION
--	WHERE LAT_N < 137.2345;

	--But I don't think MAX is the right funciton.
	--the 

--Ok,
--I tried and found so many interesting issues.

--the round your answer to 4 decimal places.

--I am re-invigorated by the problem.

----------------------------01 20 2025-----------------------------------------

--ok,

--so,

--I ended up by startin to look through the book for ideas on how to proceed
--I didn't find anything
--but I did end up reading on nested loops
--and they are not what I though they were.

--I will have to look at more concrete examples.

--ok,

--Looking through the book inspired me to comoe up with a google search

--I found a possible idea 

--SELECT ID FROM [TableName]
--WHERE Calling_ID IN
--(
--SELECT Called_ID FROM [TableName]
--)

--so, how would I rework for my situation.

--SELECT LAT_N
--	FROM STATION
--	WHERE LAT_N IN
--	(
--	SELECT LONG_W 
--		FROM STATION
--		WHERE LAT_N < 137.2345
--);

--I realized this was a subquery like half way through
--the SELECT statement in line 198.  the inner select query.

--I am excited to run it.

--USE Weather_Observation_Station_2
--SELECT MAX(LAT_N)
--	FROM STATION
--	WHERE LONG_W IN--here, I need to fix this.
--	(
--	SELECT LONG_W 
--		FROM STATION
--		WHERE LAT_N < 137.2345
--);

--It gave me an empty result set.

--Ok, I went through a few iterations really fast.

--but I don't think I am getting the correct output

--ok, 
--I need to rebuild some assumtions.

--USE Weather_Observation_Station_2;
--SELECT LAT_N
--	FROM STATION
--		WHERE LONG_W = 65.6849136352539;

		--Ok, here I get a deep sense of satisfaction
		--that I can use to build next time's query.

		--I am burnt.

--------------------------------01 23 2025------------------------------------
--I am super excited for a keyboard that I ordered

--So, since last time with the help of query in lines 227 to 230
--I have re-understood the WHERE clause.

--it is very complicated.
--it can do many things.

--so,
--let me carve out the query.

--query the western longitude
--for the largest northern latitude --it already feels better.
--that is less than 137.2345

--USE Weather_Observation_Station_2;
--SELECT CAST(MAX(LAT_N ) AS DECIMAL(7,4))
--	FROM STATION
--	WHERE LONG_W < 137.2345;

	--Oh no
	--wrong answer.

	--I think then the wording 
	--we go back to a previous problem
	--but the WHERE in line 256 should
	--be for LAT_N.
	--will it need a subquery?

		--I just tried to solve it quickly 
		--wrong answer

			--this is a really weird problem for me
			--at least I got a better handle on the WHERE
			--clause.

--------------------01 26 2025---------------------------------------

--so, now just having read the problem again am thinknign that
--what I need to do is to do the WHERE clause be LONG_W --
--not LAT_N
--so, I think though that I may have done that before?

--let me try it again

--USE Weather_Observation_Station_2;
--SELECT ROUND(MAX(LAT_N),4)
--	FROM STATION
--		WHERE LONG_W < 137.2345; 

	--YEAH, I DID THIS LAST TIME ALREADY

	--THEN WHAT IS THE ISSUE?
	--THE ROUNDING?

--I for get how the previous answer was displayed on 

--still wrong answer

--is it then that 

--USE Weather_Observation_Station_2;
--SELECT CAST(ROUND(MAX(LONG_W),4) AS DECIMAL (7,4))
--	FROM STATION
--		WHERE LAT_N < 137.2345;

		--I worked this one through and they didn't like it?

		--OK, I AM SEEING A DISCREPANCY
		--IN THE HACKERRANK.COM SCREEN IT SAYS
		--THAT THE RESULT SET OF THE SAME QUERY AS
		--IN LINES 300-302 IS 164.8760
		--HOWEVER, IN MS SSMS 
		--IT SAYS THAT THE ANSWER IS 
		--164.8761

		--I HAVE TO WORK ON THIS SMALL DETAIL

		--I CHANGED THE PARAMETER ON THE ROUND FROM 4 TO 5
		--AND GOT THE WRONG ANSWER AGAIN BUT IT DISPLAYED 
		--164.8761

		--REALLY FRUSTRATING.

		--I THINK THAT I AM JUST GOING TO LOOK UP THE ANSWER FO RTHIS PROBLEM

		--OK,
		--I looked up the asnwer and found one to work through

		--for ms sql
		--from mominmustakeem61
		--SELECT FORMAT(LONG,'###.####') 
		--FROM STATION
		--WHERE LAT_N = 
		--(SELECT MAX(LAT_N)
		--FROM STATION
		--WHERE LAT_N < 137.2345)

			--The other answers took such a weird approach

			--there were others who were very close to what I was getting at

			--another one by sonaldubey2207
			--SELECT CAST(ROUND(LONG_W,4) AS DECIMAL(10,4))
			--FROM STATION
			--WHERE LAT_N < 137.2345
			--ORDER BY LAT_N DESC LIMIT 1;

			--I am getting such a sense of awe at other people's styles already
			--such an interesting way to solve things.

			--yeah, I am very excited to get back next time.

-----------------------------01 28 2025------------------------------------------------

--I am back

--Thinking about this new query

--does it even work?

--SELECT CAST(ROUND(LONG_W,4) AS DECIMAL(10,4))
--			FROM STATION
--			WHERE LAT_N < 137.2345
--			ORDER BY "LAT_N" DESC;
			--LIMIT 1;

			--already line number 362 doesn't work.
			--however,
			--let me look at 

--USE Weather_Observation_Station_2;
--SELECT CAST(ROUND(MAX(LONG_W),4) AS DECIMAL (7,4))
--	FROM STATION
--		WHERE LAT_N < 137.2345;

		--so, very very similarities between both

		--I think the MAX should be placed on LAT_N instead of LONG_W like I have done.
		--I think at least this would be very hard for me to have understood

		--so, let me look at  the syntax for ORDER BY
		--in the book!

		--I think I have to do a subquery.

USE Weather_Observation_Station_2;
SELECT CAST(ROUND(LONG_W,4) AS DECIMAL(10,4))
			FROM STATION
			WHERE LAT_N IN  --here I introduce the subquery
			(SELECT  MAX(LAT_N)
			FROM STATION
			WHERE LAT_N < 137.2345);

			--OK, 
			--I got a different answer than before
			--but I don't have enough time to submit it
			--I will try next time!

------------------------------01 30 2025--------------------------------------------------------


--!
--I submitted the query in lines 384 to 390 and it worked!

--I have to admit that this one was very weirdly worded.

--Query the western Longitude (LONG_W) 
--for the largest Northern Latitude that is less than 137.2345.
--Round your answer to 4 decimal places.

--so,
--not sure what to do.

--regarding how I missed so many things in this problem.

--I think line 406 was the most confusing.

--MAX(LAT_N) that is less than 137.2345.
--that is weird.
--less than 137.2345.
--while the MAX(LAT_N) is in play.