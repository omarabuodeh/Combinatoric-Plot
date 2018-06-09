%% Function that plots all possible plots based on given data
% Data should consist of the independent variables (x) and dependent
% variables (y) of rows (m) and columns (n).
% Labels should be of type cells and contain strings of the name of all the
% columns in Data.
function [p] = PlotAll(Data, Labels)

num_cols = size(Data,2);                      % Define number of rows and columns for Data variable


numOfplots = num_cols^2;                          % Calculate total number of plots
p = figure;
for plotID = 0:numOfplots-1
    subplot(num_cols,num_cols,plotID+1)          % Define divisions of plots in both X and Y, and define which graph to plot
    plot(Data(:,floor(plotID/num_cols)+1),Data(:,mod(plotID,numOfplots/num_cols)+1))   % Select all possible parameters to plot
    xlabel(Labels{floor(plotID/num_cols)+1})      % Select labels for X AXIS
    ylabel(Labels{mod(plotID,numOfplots/num_cols)+1}) % Select labels for Y AXIS
end
end
%