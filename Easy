# Top Earners

select concat(
    max(months*salary),'  ',(select count(*) from employee where months*salary=(select max(months*salary) from employee))
    )
from employee;



# Weather Observation Station 11

select distinct(city) from station
where left(city,1) not in ('a','e','i','o','u') or right(city,1) not in ('a','e','i','o','u');
