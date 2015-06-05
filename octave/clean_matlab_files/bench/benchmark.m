clc;
clear;

pathFile ='C:\Users\zille_000\Documents\MEGA\thesis\thesis\benchmark\testValues';
file = textread(pathFile, '%f', 'delimiter', '\n', 'whitespace', '','bufsize', 10000);
data = file;
logdata = zeros(length(data));
logdata = log(data);
semilogx(data);