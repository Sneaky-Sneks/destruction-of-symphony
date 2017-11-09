clear all;
clc;
close all;

[y, fs] = audioread('Afterlife.wav');
y = (y(:,1)+y(:,2))/2;
N = 3;
for i = 1:400
    wn = [(50*i+50)/fs, 50*i/fs];
    [B, A] = butter(N,wn);
    yout(i,:) = filter(B, A, y);
end