--ok, 
--I need to plan this pomodoro
--I need to change the name of the column (LON_N) to (LON_W) in the STATION table
--this means that I have to errase the table.

--and re-upload it.
--re-upload it using the import/export wizard.

--let me look up how to delete a table.

--USE Weather_Observation_Station_2;
--DROP TABLE STATION;


--Ok,
--I failed at uploading a new table with the correct name
--but the column title I need to change is LON_N to LONG_W.
--very different.

-----------------------01 06 2025------------------------------------------

--ok, if I remeber correctly
--I need to re-upload.

--but this time. 

--I want to specify that it is already a .csv


--I will now test if I used the wizard correctly

USE Weather_Observation_Station_2;
SELECT *
	FROM STATION;

	--OK,
	--SUCCESS.

--I will now update each other SQL file where I used the wrong
--column name.
--LON_N vs the correct LONG_W.
