% Initial Map Download Test
% Descr: A test of downloading shp datafile types and basic graphs
% Author(s): Warren Yuan
% Date: 8 Sept 2021

clc;
close all;
clear;

% find file
extent = "01001"; % extent: geographic code marker

% path
folder = "tl_2020_" + extent + "_roads";    % foldername  
filename = folder + ".shp";

path = folder + "/" + filename;
s = shaperead(path);

% display map
mapshow(s);