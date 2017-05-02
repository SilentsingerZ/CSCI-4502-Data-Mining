% CSCI 4502 Project
% Climate change since 1750
% Xinyi
% Mar.28,2017
clc
clear all

%% input the Global Temperatures file
ftoread = 'GlobalLandTemperaturesByMajorCity.csv';
fid = fopen(ftoread);
fgetl(fid);
M = textscan(fid, '%s%f%f%s%s%s%s', 'Delimiter',','); 
fclose(fid);

%% read and store date
date = split(M{1,1},'-');
year = str2double(date(:,1));
years = unique(year);
avg = cell2mat(M(1,2));
avg_unc= cell2mat(M(1,3));
city = M{1,4};
city = regexprep(city, '\W', '');
city(strcmp('Bogot√', city))={'Bogot'};
city(strcmp('Bras√lia', city))={'BrasAlia'};
city(strcmp('S√oPaulo', city))={'SAoPaulo'};
citys = unique(city);
% country = char(M{1,5});

%% calculate the average temperature by years
for n = 1:numel(citys)
    y.([char(citys(n))])=avg(strcmp(city,citys(n)),:);
end

for i = 1:numel(citys)
    city_avg(i) = nanmean(y(1).(char(citys(i))));
end

city_avg_de = sort(city_avg);
for j = 1:numel(citys)
    ind = find(city_avg_de(j)==city_avg,1);
    city_name(j) = citys(ind);
end
 
%% plot graphs
figure(1)
barh(city_avg_de);
set(gca,'xlim',[0 30],'YLim',[1 100],'YTick',1:100,'YTickLabel',city_name)
