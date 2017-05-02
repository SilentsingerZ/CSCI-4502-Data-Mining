UPDATE temcity SET latnum = (
SELECT digits(latitude) );
