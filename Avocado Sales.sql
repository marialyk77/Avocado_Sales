CREATE DATABASE Avocado_Prices;


SELECT * FROM dbo.avocado;


SELECT MIN(Date) AS min_date, MAX(Date) AS max_date
FROM dbo.avocado;



--- take only 2015-2017
SELECT *
FROM dbo.avocado
WHERE YEAR(Date) BETWEEN 2015 AND 2017;
