% Sr. No. 01 - Study of TDMA
clc;
clear all;
close all;

% TDMA Simulation
% 4 users share a single communication channel
N = 4;

% Data of each user
user1 = [1 1 0 1];
user2 = [0 1 1 0];
user3 = [1 0 1 1];
user4 = [0 0 1 0];

% Combine data using TDMA time slots
tdma_signal = [user1 user2 user3 user4];

t = 1:length(tdma_signal);
figure;
subplot(2,1,1);
stairs(t, tdma_signal, 'LineWidth', 2);
grid on;
xlabel('Time Slot');
ylabel('Amplitude');
title('TDMA Transmitted Signal');
ylim([-0.2 1.2]);
hold on;
xline(4.5, '--');
xline(8.5, '--');
xline(12.5, '--');

% Receiver: separate the data of each user
received_user1 = tdma_signal(1:4);
received_user2 = tdma_signal(5:8);
received_user3 = tdma_signal(9:12);
received_user4 = tdma_signal(13:16);

subplot(2,1,2);
stairs(t, tdma_signal, 'LineWidth', 2);
grid on;
xlabel('Time Slot');
ylabel('Amplitude');
title('TDMA Received Signal');
ylim([-0.2 1.2]);

disp('TDMA Signal:');
disp(tdma_signal);
disp('Received data of User 1:');
disp(received_user1);
disp('Received data of User 2:');
disp(received_user2);
disp('Received data of User 3:');
disp(received_user3);
disp('Received data of User 4:');
disp(received_user4);
