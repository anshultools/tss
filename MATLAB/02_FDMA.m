% Sr. No. 02 - Study of FDMA
clc;
clear all;
close all;

% FDMA Simulation
% Three users are assigned different frequencies
fs = 1000;                    % Sampling frequency
t = 0:1/fs:1-1/fs;             % Time vector

% Frequencies assigned to different users
f1 = 50;                       % User 1 frequency
f2 = 100;                      % User 2 frequency
f3 = 150;                      % User 3 frequency

% Generate signals for each user
user1 = sin(2*pi*f1*t);
user2 = sin(2*pi*f2*t);
user3 = sin(2*pi*f3*t);

% Combine all signals (FDMA signal)dma_signal = user1 + user2 + user3;

figure;
subplot(4,1,1);
plot(t, user1);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('User 1 - 50 Hz');

subplot(4,1,2);
plot(t, user2);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('User 2 - 100 Hz');

subplot(4,1,3);
plot(t, user3);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('User 3 - 150 Hz');

subplot(4,1,4);
plot(t, user4);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Combined FDMA Signal');

% Frequency spectrum
