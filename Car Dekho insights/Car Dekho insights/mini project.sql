create schema cars;
use cars;

-- ----------------- READ DATA -------------------
select * from car_dekho;

-- ---------TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS ----------
select count(*)as total from car_dekho; 

-- ----------CAR AVAILABLE IN 2023 -------------------------- 
select count(*)as total from car_dekho where year=2023;

-- ---------CAR AVAILABLE IN 2020-2022------------------------
select year,count(*)as total from car_dekho where year in(2020,2021,2022) group by year; 

-- ----------CAR AVAILBLE BY YEAR-----------------------------
select year,count(*)as total from car_dekho group by year;

-- ----------DIESEL CAR AVAILABLE IN 2020 -------------------- 
select count(*)as total from car_dekho where fuel="Diesel" and year=2020;

-- ----------PETROL CAR AVAILABLE IN 2020 -------------------- 
select count(*)as total from car_dekho where fuel="Petrol" and year=2020;

-- -----------ALL FUEL CARS BY YEAR --------------------------
select year,count(*)as total from car_dekho where fuel in ("Petrol","Diesel","CNG") group by year;

-- ----------year having more than 100 cars ------------------
select year,count(*)as total from car_dekho group by year having count(*)>100;
 
-- ---------ALL cars count details between 2015-2023 ---------
select year,count(*) as total from car_dekho where year between 2015 and 2023 group by year;

select * from car_dekho where year between 2015 and 2023;

select distinct name from car_dekho;
select distinct fuel from car_dekho;
select distinct seller_type from car_dekho;


select fuel, count(*) as total_cars 
from car_dekho 
group by fuel;

select seller_type, count(*) as total_cars 
from car_dekho 
group by seller_type;

select year, avg(selling_price) as avg_price 
from car_dekho 
group by year 
order by year;


select year, fuel, count(*) as total 
from car_dekho 
where fuel in ('Petrol','Diesel') 
group by year, fuel 
order by year;

select year, count(*) 
from car_dekho 
where year < year(curdate()) - 10 
group by year;

select fuel, max(selling_price), min(selling_price), avg(selling_price) 
from car_dekho 
group by fuel;

select * from car_dekho 
order by selling_price desc 
limit 10;

select year, count(*) as total 
from car_dekho 
group by year 
order by total desc 
limit 1;








