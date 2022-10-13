                                             
											 ------------>***** TASK 3 *****<------------
---- All tables & columns are referenced by data dictionary and Technical guide

--> Creating Database 
create database Man_Crime;

	--> Adding new Column id with serial number   (Following Lab Week 8 instructions)
ALTER TABLE Man_Crime.[dbo].[ManCrimeData 17-18]
ADD ID INT IDENTITY;

	--> Making Primary key
ALTER TABLE Man_Crime.[dbo].[ManCrimeData 17-18]
ADD CONSTRAINT PK_Id PRIMARY KEY NONCLUSTERED (ID);
GO
	--> Adding new Column GeoLocation
ALTER TABLE Man_Crime.[dbo].[ManCrimeData 17-18]
ADD [GeoLocation] GEOGRAPHY;

	--> Creating geography points in GeoLocation using Crime Data 
UPDATE Man_Crime.[dbo].[ManCrimeData 17-18]
SET [GeoLocation] = geography::Point(Latitude, Longitude, 4326)
WHERE [Longitude] IS NOT null
AND [Latitude] IS NOT null
AND CAST(Latitude AS decimal(10, 6)) BETWEEN -90 AND 90
AND CAST(Longitude AS decimal(10, 6)) BETWEEN -90 AND 90

	--> Viewing LSOA names
Drop view Counties;
create view Counties AS 
select *, substring([LSOA name],1,LEN([LSOA name]) - 4)as County_name
from Man_Crime.[dbo].[ManCrimeData 17-18];
	--> Executing the view
GO
Select * from Counties;


	--> Viewing Data only from Manchester counties
Drop view Man_counties
Create View Man_counties AS
SELECT * from  Counties where [County_name] IN('Salford','Manchester','Rochdale','Oldham',
'Stockport','Tameside','Wigan','Trafford','Bolton','Bury')
	--> Executing the view
GO
Select * from Man_counties;

--> 1- Viewing Highest Crimes in Manchester 
Drop view Highest_ManCrimes;
Create View Highest_ManCrimes AS
SELECT [Crime type] ,count(ID)as TotalNumberofCrimes
from Man_counties
Group By [Crime type]
	--> Executing the view
Select * from Highest_ManCrimes order by TotalNumberofCrimes desc;

-->  2- Counties Data where Crime Offender has sent to prison
Drop view Counties_OffenderPrison;
Create View Counties_OffenderPrison AS
SELECT County_name AS Counties,count([Last outcome category]) As [Offender sent to prison]
from Man_counties
Where [Last outcome category] = 'Offender sent to prison'
Group by County_name
	--> Executing the view
Select * from Counties_OffenderPrison;

-->  3- Counties Data where Crime Offender has sent to prison
DROP VIEW Counties_CrimeLocation;
Create View Counties_CrimeLocation AS
SELECT County_name AS Counties,count([Location]) As [On/Near Parking Area Crimes]
from Man_counties
Where [Location] = 'On or near Parking Area'
Group by County_name
	--> Executing the view
GO
Select * from Counties_CrimeLocation;

--> 4- Creating view to check 'Public order Cime' in Manchester
DROP VIEW Public_order;
CREATE VIEW Public_order AS
SELECT * FROM Man_counties
WHERE [Crime type]='Public order'
AND [GeoLocation] IS NOT null;
	--> Executing the view
GO
Select * from Public_order;

--> 5- Creating view to check 'Criminal damage and arson' in Manchester
DROP VIEW Criminal_damage_arson;
CREATE VIEW Criminal_damage_arson AS
SELECT * FROM Man_counties
WHERE [Crime type]='Criminal damage and arson'
AND [GeoLocation] IS NOT null;
	--> Executing the view
GO
Select * from Criminal_damage_arson;

--> 6- Creating view to check 'Burglary' in Manchester
DROP VIEW Burglary_Crime;
CREATE VIEW Burglary_Crime AS
SELECT * FROM Man_counties
WHERE [Crime type]='Burglary'
AND [GeoLocation] IS NOT null;
	--> Executing the view
GO
Select * from Burglary_Crime;

	-------------> *** CREATING VIEWS FOR QGIS *** <-------------
--> 6- Creating view to check 'Violence and sexual offences' in Manchester
DROP VIEW Vehicle_crime_GreaterManchester;
CREATE VIEW Vehicle_crime_GreaterManchester AS
SELECT * FROM Man_counties
WHERE [Crime type]='Vehicle crime' and [County_name]='Manchester'
AND [GeoLocation] IS NOT null;
	--> Executing the view
GO
Select * from Vehicle_crime_GreaterManchester;

--> 7- Creating view to check 'Anti-social behaviour' in SALFORD county for (Google Satellite map as OpenLayers plugin in QGIS)
DROP VIEW Anti_social_behaviour_SALFORD;
CREATE VIEW Anti_social_behaviour_SALFORD AS
SELECT * FROM Man_counties
WHERE [Crime type]='Anti-social behaviour'
AND [GeoLocation] IS NOT null AND County_name='Salford';
	--> Executing the view
GO
Select * from Anti_social_behaviour_SALFORD;


	-------------> *** 8- CREATING VIEW BY JOINING CRIME DATA WITH POPULATION FOR VISUALIZATION *** <-------------
DROP VIEW Joining_Crimes_Population;
CREATE VIEW Joining_Crimes_Population AS 
Select B.[Area Codes] AS CrimePopFile17, C.[Area Codes] AS CrimePopFile18, 
A.[Month], A.[Reported by], A.[Location], A.[LSOA name], A.[Crime type], A.[Last outcome category] 
FROM [dbo].[ManCrimeData 17-18] AS A
INNER JOIN [dbo].[ManPopulation17] AS B
ON A.[LSOA code] = B.[Area Codes]
INNER JOIN [dbo].[ManPopulation18] AS C
ON B.[Area Codes] = C.[Area Codes];
	--> Executing the view
GO
select * from Joining_Crimes_Population;

