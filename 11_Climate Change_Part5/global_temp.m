% CSCI 4502 Project
% Climate change since 1750
% Xinyi
% Mar.28,2017
clc
clear all

%% input the Global Temperatures file
ftoread = 'GlobalTemperatures.csv';
fid = fopen(ftoread);
fgetl(fid);
M = textscan(fid, '%s%f%f%f%f%f%f%f%f', 'Delimiter',','); 
fclose(fid);

%% read and store date
date = split(M{1,1},'-');
year = str2double(date(:,1));
month = str2double(date(:,2));
Land_avg = cell2mat(M(1,2));
Land_avg_unc= cell2mat(M(1,3));
Land_max = cell2mat(M(1,4));
Land_max_unc = cell2mat(M(1,5));
Land_min = cell2mat(M(1,6));
Land_min_unc = cell2mat(M(1,7));
LandAndOcean_avg = cell2mat(M(1,8));
LandAndOcean_avg_unc = cell2mat(M(1,9));
years = unique(year);
x = 1750:2015;
z = linspace(1750,2015,798);

%% calculate the land & ocean average temperature by years
for n = 1:numel(years)
    y.(['y_' num2str(years(n))])=LandAndOcean_avg(year==years(n),:);
end
T = struct2table(y);
for i = 1:266
    lo_avg(i) = nanmean(T{:,i}');
    lo_max(i) = nanmax(T{:,i}');
    lo_min(i) = nanmin(T{:,i}');
end

%% calculate the average temperature by years
for n = 1:numel(years)
    y.(['y_' num2str(years(n))])=Land_avg(year==years(n),:);
end
T = struct2table(y);
for i = 1:266
    year_avg(i) = nanmean(T{:,i}');
    year_max(i) = nanmax(T{:,i}');
    year_min(i) = nanmin(T{:,i}');
end

%% calculate avgerage land temperature by seasons
spr = Land_avg(month >= 3 & month <= 5, :);
spring = mean(reshape(spr,3,[]))';
summ = Land_avg(month >= 6 & month <= 8, :);
summer = mean(reshape(summ,3,[]))';
fal = Land_avg(month >= 9 & month <= 11, :);
fall = mean(reshape(fal,3,[]))';
win = Land_avg(month >= 12 | month <= 2, :);
winter = mean(reshape(win,3,[]))';


%% plot graphs
figure(1)
x = 1750:2015;
plot(x,lo_avg)
xlim([1848 2016])
xlabel('Year')
ylabel('Temperature(C)')
title('Land and ocean average temperature from 1848 to 2015')


figure(2)
plot(x,year_avg)
axis([1750 2016 5.5 10])
xlabel('Year')
ylabel('Temperature(C)')
title('Global yealy average temperature from 1750 to 2015')


figure(3)
plot(x,year_max)
axis([1750 2016 8 20])
xlabel('Year')
ylabel('Temperature(C)')
title('Global yealy maximum temperature from 1750 to 2015')


figure(4)
plot(x,year_min)
axis([1750 2016 -3 5])
xlabel('Year')
ylabel('Temperature(C)')
title('Global yealy minimum temperature from 1750 to 2015')


f = figure(5);
p = uipanel('Parent',f,'BorderType','none'); 
p.Title = 'Global temperature from 1750 to 2015'; 
p.TitlePosition = 'centertop'; 
p.FontSize = 12;
p.FontWeight = 'bold';
ax1 = subplot(3,1,1,'Parent',p)
plot(ax1,x,year_avg,'k')
xlim([1750 2016])
xlabel('Year')
ylabel('Temperature(C)')
title('Global yealy average temperature from 1750 to 2015')
ax2 = subplot(3,1,2,'Parent',p)
plot(ax2,x,year_min,'r')
xlim([1750 2016])
xlabel('Year')
ylabel('Temperature(C)')
title('Global yealy minimum temperature from 1750 to 2015')
ax3 = subplot(3,1,3,'Parent',p)
plot(ax3,x,year_max,'b')
xlim([1750 2016])
xlabel('Year')
ylabel('Temperature(C)')
title('Global yealy maximum temperature from 1750 to 2015')


figure(6)
plot(x,year_avg,x,year_min,x,year_max)
axis([1750 2016 -3 20])
xlabel('Year')
ylabel('Temperature(C)')
title('Global yealy temperature from 1750 to 2015')
legend('Average Temperature','Min Temperature','Max Temperature')


figure(7)
scatter(x,spring)
hold on
scatter(x,summer)
scatter(x,fall)
scatter(x,winter)
hold off
axis([1750 2016 0 18])
xlabel('Year')
ylabel('Temperature(C)')
title('Land Monthly Average Temperature by year')
legend('Spring','Summer','Fall','Winter')

 
figure(8)
scatter(z,spr,'filled')
hold on
scatter(z,summ,'filled')
scatter(z,fal,'filled')
scatter(z,win,'filled')
hold off
xtickangle(45)
axis([1750 2016 -2.1 19.1])
xlabel('Year')
ylabel('Temperature(C)')
title('Land Average Temperature by year')
legend('Spring','Summer','Fall','Winter')