% Road Sorting
% Descr: A file that sorts the lengths of roads and finds roads that pass
% through the county/region examined
% Author(s): Warren Yuan
% Date: 8 Sept 2021

clc;
close all;
clear;

% import file
filename = "tl_2020_01001_roads.shp";
roads = shaperead(filename);

% checking data for road types
n = 0;  % init num of rds of specific type

roadtypes = extractfield(roads,'RTTYP');    % init array of rd types

% for every rd type, check to see if matches code
for i = 1:length(roadtypes)
    if roadtypes(i) == "I"
        n = n + 1;
    end
end

% report num of specific code rd type
disp(n)

