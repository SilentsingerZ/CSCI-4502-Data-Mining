LOAD DATA LOCAL INFILE 'GlobalLandTemperaturesByCity.csv' 
INTO TABLE AAA 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
