/*1. Which destination in the fights database is the furthest distance away.
*/
Select dest from flights where distance>0 order by distance desc limit 1;
/*
2. What are the different numbers of engines in planes table. For each number of engines, which aircraft have the most number of seats?
*/
select distinct engines from planes;

select engines, manufacturer, seats from planes where engines=1 order by seats desc limit 1;
select engines, manufacturer, seats from planes where engines=2 order by seats desc limit 1;
select engines, manufacturer, seats from planes where engines=3 order by seats desc limit 1;
select engines, manufacturer, seats from planes where engines=4 order by seats desc limit 1;
/*
3. Show the total number of flights
*/
select count(*) from flights;
/*
4. Show the total number of flights by airline (carrier)
*/
select carrier, count(*) from flights group by carrier;
/*
5. Show all of the airlines, ordered by number of flights in descending order
*/
select carrier, count(*) as tot from flights group by carrier order by tot desc;
/*
6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order
*/
select carrier, count(*) as tot from flights group by carrier order by tot desc limit 5;
/*
7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by  number of flights in descending order
*/
select carrier, count(*) as tot from flights where distance >=1000 group by carrier order by tot desc limit 5;
/*
8. Create a question that a) uses data from flights b)requires aggregation t answer it

Q: what is total number of flight which starts from newark*/

select count(*) as tot from flights where origin="EWR";