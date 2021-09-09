% Initial Map Download Test
% Descr: A test of downloading shp datafile types and basic graphs
% Author(s): Warren Yuan
% Date: 8 Sept 2021

clc;
close all;
clear;

% init vars
filename = "tl_2020_01001_roads.shp";
s = shaperead(filename);

% display map
mapshow(s);