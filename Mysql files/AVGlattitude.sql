select AVG(AverageTemperature) as low
from temcity
where (latnum > 0 and latnum < 3000)
order by dt;

select AVG(AverageTemperature) as mid
from temcity
where (latnum > 3000 and latnum < 5000)
order by dt;


select AVG(AverageTemperature) as high
from temcity
where (latnum > 5000 and latnum < 9000)
order by dt;
