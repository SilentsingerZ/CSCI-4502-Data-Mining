select AVG(AverageTemperature) as kimberleyWinter
from temcity
where (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 12)
OR (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 1)
OR (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 2)
order by dt;

select AVG(AverageTemperature) as kimberleySpring
from temcity
where (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 3)
OR (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 4)
OR (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 5)
order by dt;

select AVG(AverageTemperature) as kimberleySummer
from temcity
where (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 6)
OR (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 7)
OR (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 8)
order by dt;

select AVG(AverageTemperature) as kimberleyAutumn
from temcity
where (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 9)
OR (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 10)
OR (temcity.city = 'Norilsk' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 11)
order by dt;
