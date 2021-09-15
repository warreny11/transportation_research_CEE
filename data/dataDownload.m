% Data Download
% Descr: A file that downloads all data
% Author(s): Warren Yuan
% Date: 14 Sept 2021

clc;
close all;
clear;

%% I. FIPS codes
state_codes = (1:56);


county_codes = (1:254);

state_codes = state_codes + (60:95);


% init_code = 01001;   % initial FIPS code
% counties = 3242;    % num of counties/territories in US
% 
% code = zeros(counties,1);   % array for county coades
% code(1) = init_code;        % seed array
% 
% for i = 1:counties-1
%     code(i+1) = code(i) + 2;
% end

%%


