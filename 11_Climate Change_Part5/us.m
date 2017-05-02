% CSCI 4502 Project
% Climate change since 1750
% Xinyi
% Mar.28,2017
clc
clear all

%% input the Global Temperatures file
ftoread = 'USLandTemperaturesByState.csv';
fid = fopen(ftoread);
fgetl(fid);
M = textscan(fid, '%s%f%f%s%s', 'Delimiter',','); 
fclose(fid);

%% read and store date

date = split(M{1,1},{'-','/'});
year = str2double(date(:,1));
month = str2double(date(:,2));
temp = cell2mat(M(1,2));
period = [year temp];
state = M{1,4};
state = regexprep(state, '\W', '');
states = unique(state);
years = unique(year);
x = 1743:2016;


%% sort the raw data by states
for n = 1:numel(states)
    y.(char(states(n)))= temp(strcmp(state,states(n)),:);
end

