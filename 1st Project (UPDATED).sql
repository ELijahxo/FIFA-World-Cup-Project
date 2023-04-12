--1) World Cup winner in 1930?

Answer:

SELECT Winner FROM [FIFA World Cup - Sheet1]
WHERE Year = '1930';


--2) Fourth Place and World Cup Winner in 1970?

Answer:

SELECT Fourthplace, Winner FROM [FIFA World Cup - Sheet1]
WHERE Year = '1970';


--3) Retrieve the total numbers of FIFA World Cup winners, grouped by each countries name in descending order of their total number of wins!

Answer:

SELECT Winner, COUNT(*) AS Winners FROM [FIFA World Cup - Sheet1]
GROUP BY Winner
ORDER BY Winners DESC;

--4) Retrieve the total numbers of FIFA World Cup SecondPlace, grouped by each countries name in descending order of their total numbers of FIFA World Cup SecondPlace

Answer: 

SELECT SecondPlace, COUNT(*) AS SecondPlacenumbers FROM [FIFA World Cup - Sheet1]
GROUP BY SecondPlace
ORDER BY COUNT(*) DESC;



--5) Find the total number of goals scored by each country that has won the FIFA World Cup?

Answer:

SELECT Winner, SUM(GoalsScored) AS TotalGoalsScored FROM [FIFA World Cup - Sheet1]
GROUP BY Winner
ORDER BY TotalGoalsScored DESC;


--6. Find total number of goals scored by each country participating at the World Cup during 1990 and 2014!

Answer: 

SELECT Country, SUM(GoalsScored) AS TotalGoalsScored FROM [FIFA World Cup - Sheet1]
WHERE Year >= 1990 AND Year <= 2014
GROUP BY Country
ORDER BY SUM(GoalsScored) DESC;


--7. Find total number of goals scored in 2014!

Answer:

SELECT Country, SUM(GoalsScored) AS GoalsSum
FROM [FIFA World Cup - Sheet1]
WHERE Year = 2014
GROUP BY Country
ORDER BY SUM(GoalsScored) DESC;

--8. Find the max goals scored in 2014

Answer: 

SELECT Country, MAX(GoalsScored) AS MaxGoals
FROM [FIFA World Cup - Sheet1]
WHERE Year = 2014
GROUP BY Country
ORDER BY MAX(GoalsScored) DESC;

--9. Find the max goals scored according to the given data?

SELECT Country, MAX(GoalsScored) AS GoalsMax
FROM [FIFA World Cup - Sheet1]
GROUP BY Country
ORDER BY MAX(GoalsScored) DESC;






