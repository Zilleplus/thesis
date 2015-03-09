clc;
clear;

pathFiles = 'C:\Users\zille_000\Dropbox\thesis\thesis\raw_data_tests\OptimizedTimer\cpu_memory_stress\withLoad\1M_2T\';

%read out the files into the matrix in the above path
toRead = [1 2 3 4 5 6 7 8 16 32 64];
batchLenght = 102400; % number of values in file
data = zeros(length(toRead),batchLenght); %make empty matrix to hold values

for n = 1:length(toRead)
    fileName = strcat('T' , num2str(toRead(n))); % set the right file name
    fileNameWithExt = strcat(fileName , '.txt'); % add extension
    pathFile = strcat(pathFiles,fileNameWithExt);
    
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

printGraphs = [1 4 8 9 10 11]; %% max use 6 plots !

figure(1)
for n = 1:length(printGraphs)
    subplot(3,2,n);
    xrange = 0:10;
    [f, x] = hist(data_delta(printGraphs(n),:) ,xrange);
    
    % generate the title for teh graph
    title_graph = ['PDF abs(delta)' ' ' num2str(toRead(printGraphs(n))) ' ' 'cpu threads / 2 memory threads'];
    
    bar(x, f/sum(f)/(x(2)-x(1)));title(title_graph);
    xlabel('absolute waarde');ylabel('kans');
end

border =15;
variances = zeros(1,length(toRead)); % create empty matrix
for n = 1:length(toRead) % loop over all
   deltas = data_delta(n,:);
   deltas(deltas > border) = [];
   variances(n) =  var(deltas);
end


names = { '1T' ,'2T' , '3T' , '4T' , '5T', '6T', '7T' , '8T' , '16T' , '32T' , '64T' };

figure(2);
maxBar = bar(variances);
set(gca,'XTickLabel',names);
ylabel('max value');