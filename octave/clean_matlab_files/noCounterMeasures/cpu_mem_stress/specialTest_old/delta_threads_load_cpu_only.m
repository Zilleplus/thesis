clc;
clear;

pathFiles = 'C:\Users\zille_000\Documents\MEGA\thesis\thesis\raw_data_tests\OptimizedTimer\cpu_memory_stress\withLoad\1M_1T_special_test!\cpuOnly\';
%read out the files into the matrix in the above path
toRead = [1  2 3 4 5 6 7 8 9 10 11 12 13 14 15];
batchLenght = 102400; % number of values in file
data = zeros(length(toRead),batchLenght); %make empty matrix to hold values
border =15; % presume that anything above 15 is an extreme value

for n = 1:length(toRead)
    fileName = strcat('T' , num2str(toRead(n))); % set the right file name
    fileNameWithExt = strcat(fileName , '.txt'); % add extension
    pathFile = strcat(pathFiles,fileNameWithExt);
    
    file = textread(pathFile, '%d', 'delimiter', '\n', 'whitespace', '','bufsize', batchLenght);
    LoadTimes = file;
    for i = 1:batchLenght % loop over all the values and add to matrix
        data(n,i) = LoadTimes(i);
    end
end

data_delta = zeros(length(toRead),batchLenght);
for n = 1:length(toRead)
   data_delta(n,:) =  abs( data(n,:) - 100);
end
% 
% --------------------------
% calculate the max values
% --------------------------
% 
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

names = { '1T' ,'2T' , '3T' , '4T' , '5T', '6T', '7T' , '8T' , '9T' , '10T' , '11T' , '12T', '13T' ,'14T', '15T'};

figure(4);
varBar = bar(variances);
set(gca,'XTickLabel',names);
ylabel('variantie');