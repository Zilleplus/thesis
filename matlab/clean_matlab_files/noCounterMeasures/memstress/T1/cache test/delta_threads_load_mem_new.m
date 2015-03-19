clc;
clear;

pathFiles = 'C:\Users\zille_000\Documents\MEGA\thesis\thesis\raw_data_tests\OptimizedTimer\memory\isolated_memory_test\all_eating_signal_freeOnOs\T1\cache_load\';
%read out the files into the matrix in the above path
toRead = [32 64 128 160 192 224 256 512 1000];
batchLenght = 2048; % number of values in file
data = zeros(length(toRead),batchLenght); %make empty matrix to hold values
border =15; % presume that anything above 15 is an extreme value

for n = 1:length(toRead)
    fileName = strcat( num2str(toRead(n)) , 'K'); % set the right file name
    pathFile = strcat(pathFiles,fileName);
    
    file = textread(pathFile, '%d', 'delimiter', '\n', 'whitespace', '','bufsize', batchLenght);
    LoadTimes = file;
    for i = 1:batchLenght %loop over all the values and add to matrix
        data(n,i) = LoadTimes(i);
    end
end

data_delta = zeros(length(toRead),batchLenght);
for n = 1:length(toRead)
   data_delta(n,:) =  abs( data(n,:) - 100);
end

printGraphs = [1 2 3 7 8 9]; %% max use 6 plots !

% calculate the max values
maxs = zeros(1,length(toRead)); % create empty matrix
for n = 1:length(toRead) % loop over all
   maxs(n) =  max(data_delta(n,:));
end

% 
% --------------------------
% calculate the count
% --------------------------
% 
countExtrema = zeros(1,length(toRead)); % create empty matrix
for n = 1:length(toRead) % loop over all
   deltas = data_delta(n,:); % copy of the deltas in a new matrix
   deltas(deltas < border) = []; % remove all normal values keep extrema
   countExtrema(n) =  length(deltas);
end
% 
% --------------------------
% calculate the variances
% --------------------------
% 
variances = zeros(1,length(toRead)); % create empty matrix
for n = 1:length(toRead) % loop over all
   deltas = data_delta(n,:);
   deltas(deltas > border) = [];% remove the extreme values
   variances(n) =  var(deltas);
end
% 
% --------------------------
%

figure(1)
for n = 1:length(printGraphs)
    subplot(3,2,n);
    xrange = 0:10;
    [f, x] = hist(data_delta(printGraphs(n),:) ,xrange);
    
    % generate the title for teh graph
    title_graph = ['PDF abs(delta)' ' ' num2str(toRead(printGraphs(n))) ' ' 'cpu threads, var=' num2str(variances(printGraphs(n))) ];
    
    bar(x, f/sum(f)/(x(2)-x(1)));title(title_graph);
    xlabel('absolute waarde');ylabel('kans');
end

names = { '32K' , '64K' , '128K' , '160K' , '192K' , '224K' , '256K' , '512K' , '1000K' };

figure(2);
maxBar = bar(maxs);
set(gca,'XTickLabel',names);
ylabel('max waarde');

figure(3);
varBar = bar(variances);
set(gca,'XTickLabel',names);
ylabel('variantie');

figure(4);
maxCountBar = bar(countExtrema);
set(gca,'XTickLabel',names);
ylabel('aantal extrema');