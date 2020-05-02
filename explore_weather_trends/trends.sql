/*
1. Checking whether my city (Hyderabad) is available in the database.
*/

Select * from city_list where country=’India’ and city=’Hyderabad’;

/*
2. To retrieve the city data from the data base for the city Hyderabad.
*/

Select * from city_data where city=’Hyderabad’;

/*
3. There are two colums in two different tables with same name which are to be joined for comparison. Hence I have to modify the column names for avg_temp in both the tables.
*/

Alter table city_data rename column avg_temp to city_avg_temp;

Alter table global_data rename column avg_temp to global_avg_temp;

/*
4. Then I have joined two tables using inner join on the column year in both the tables.
*/

select city_data.city_avg_temp,global_data.global_avg_temp,global_data.year from city_data join global_data on global_data.year=city_data.year where country='India' and city='Hyderabad';

-- 5. Then I have evaluated the query and downloaded the csv file which consisted global_avg_temp, city_avg_temp and year columns.
