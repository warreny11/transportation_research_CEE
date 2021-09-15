% Road Sorting
% Descr: A file that sorts the lengths of roads and finds roads that pass
% through the county/region examined
% Author(s): Warren Yuan
% Date: 8 Sept 2021

clc;
close all;
clear;

%% I. import file
% find file
extent = "01001"; % extent: geographic code marker

% path
folder = "tl_2020_" + extent + "_roads";    % foldername  
filename = folder + ".shp";

path = folder + "/" + filename;
roads = shaperead(path);

%% II. initial critical road check
% checking data for road types
n = 0;  % init num of rds of specific type

roadtypes = extractfield(roads,'RTTYP');    % init array of rd types

index = zeros();    % create array for indices of crit rds

% for every rd type, check to see if matches code
for i = 1:length(roads)
    if roadtypes(i) == "I"
        n = n+1;
        index(n) = i;
    end
end

% report num of specific code rd type
disp(n)

%% III. display of critical roads
interstates = roads(index);

mapshow(interstates);

