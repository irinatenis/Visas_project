SELECT*
FROM visas_in_service;


SELECT pg_typeof(2015)
FROM visas_in_service;

SELECT column_name, data_type
FROM information_schema. columns
WHERE table_schema = 'public' AND 
table_name = 'visas_in_service';
;

SELECT SUM(sum_column1 + sum_column2 + sum_column3 + sum_column4 + sum_column5 + sum_column6 + sum_column7 + sum_column8 + sum_column9+sum_column10) AS total_sum
FROM (
    SELECT 
        SUM(2013) AS sum_column1,
        SUM(2014) AS sum_column2,
        SUM(2015) AS sum_column3,
	    SUM(2016) AS sum_column4,
		SUM(2017) AS sum_column5,
		SUM(2018) AS sum_column6,
		SUM(2019) AS sum_column7,
		SUM(2020) AS sum_column8,
		SUM(2021) AS sum_column9,
		SUM(2022) AS sum_column10
     
    FROM visas_in_service
) AS subquery;

SELECT* 
FROM (
    SELECT 
        SUM(2013) AS sum_2013,
        SUM(2014) AS sum_2014,
        SUM(2015) AS sum_2015,
	    SUM(2016) AS sum_2016,
		SUM(2017) AS sum_2017,
		SUM(2018) AS sum_2018,
		SUM(2019) AS sum_2019,
		SUM(2020) AS sum_2020,
		SUM(2021) AS sum_2021,
		SUM(2022) AS sum_2022
     
    FROM visas_in_service
) AS subquery;

SELECT AVG(avg_2013 + avg_2014 + avg_2015 + avg_2016 + avg_2017 + 
		   avg_2018 + avg_2019 + avg_2020 + avg_2021+avg_2022) AS total_avg
FROM (
    SELECT 
        AVG(2013) AS avg_2013,
        AVG(2014) AS avg_2014,
        AVG(2015) AS avg_2015,
	    AVG(2016) AS avg_2016,
		AVG(2017) AS avg_2017,
		AVG(2018) AS avg_2018,
		AVG(2019) AS avg_2019,
		AVG(2020) AS avg_2020,
		AVG(2021) AS avg_2021,
		AVG(2022) AS avg_2022
     
    FROM visas_in_service
) AS subquery;
