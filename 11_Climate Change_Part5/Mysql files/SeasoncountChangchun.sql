select count(AverageTemperature)
from temcity
where (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 12 and AverageTemperature > -14.30227463644815 )
OR (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 1 and AverageTemperature > -14.30227463644815 )
OR (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 2 and AverageTemperature > -14.30227463644815 )
order by dt;

select count(AverageTemperature)
from temcity
where (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 3 and AverageTemperature > 6.036027629599168 )
OR (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 4 and AverageTemperature > 6.036027629599168)
OR (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 5 and AverageTemperature > 6.036027629599168)
order by dt;

select count(AverageTemperature)
from temcity
where (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 6 and AverageTemperature > 22.004512060099636)
OR (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 7 and AverageTemperature > 22.004512060099636)
OR (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 8 and AverageTemperature > 22.004512060099636)
order by dt;

select count(AverageTemperature)
from temcity
where (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 9 and AverageTemperature > 5.908717235890699)
OR (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 10 and AverageTemperature > 5.908717235890699)
OR (temcity.city = 'Changchun' and YEAR(temcity.dt) > 2000 and MONTH(temcity.dt) = 11 and AverageTemperature > 5.908717235890699)
order by dt;
