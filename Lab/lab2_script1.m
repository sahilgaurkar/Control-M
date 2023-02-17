close all; clear;

%load matlab_lab2.mat workspace for lab2
load("matlab_lab2.mat")

%Model 5 Plots

%Plot Graph
figure('Name', 'Model-5 Simulation-1');
plot(model5_1rad.time, model5_1rad.signals(1).values, model5_1rad.time, model5_1rad.signals(2).values, model5_1rad.time, model5_1rad.signals(3).values);
title('Response at 1 rad/sec');
legend('u', 'y_m (rad)','y_s');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')

%Plot Graph
figure('Name', 'Model-5 Simulation-2');
plot(model5_5rad.time, model5_5rad.signals(1).values, model5_5rad.time, model5_5rad.signals(2).values, model5_5rad.time, model5_5rad.signals(3).values);
title('Response at 5 rad/sec');
legend('u', 'y_m (rad)','y_s');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')

%Model 6 Plots

%Plot Graph
figure('Name', 'Model-6 Simulation-1');
plot(model6_223.time, model6_223.signals(2).values);
title('Response at Gain 2.23, Sample time = 0.001, Time delay = 0');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')


%Plot Graph
figure('Name', 'Model-6 Simulation-2');
plot(model6_02.time, model6_02.signals(2).values);
title('Response at Gain 0.2, Sample time = 0.001, Time delay = 0');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')

%At varying values of Time delay

%Plot Graph
figure('Name', 'Model-6 Simulation-3.1');
plot(model6_223001.time, model6_223001.signals(2).values);
title('Response at Gain 2.23, Sample time = 0.001, Time delay = 0.01');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')

%Plot Graph
figure('Name', 'Model-6 Simulation-3.2');
plot(model6_2230012.time, model6_2230012.signals(2).values);
title('Response at Gain 2.23, Sample time = 0.001, Time delay = 0.012');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')

%Plot Graph
figure('Name', 'Model-6 Simulation-3.3');
plot(model6_2230024.time, model6_2230024.signals(2).values);
title('Response at Gain 2.23, Sample time = 0.001, Time delay = 0.024');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')

%Plot Graph
figure('Name', 'Model-6 Simulation-3.4');
plot(model6_223005.time, model6_223005.signals(2).values);
title('Response at Gain 2.23, Sample time = 0.001, Time delay = 0.05');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')


%Plot Graph
figure('Name', 'Model-6 Simulation-4');
plot(model6_223Q24.time, model6_223Q24.signals(2).values);
title('Response at Gain 2.23, Sample time = 0.001, Time delay = 0', 'without additional load');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')

%Model 7 Plots

%Plot Graph
figure('Name', 'Model-7 Simulation-1');
plot(model7_001.time, model7_001.signals(2).values);
title('Response with Discrete Controller at Sample time = 0.01');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')

%Plot Graph
figure('Name', 'Model-7 Simulation-1');
plot(model7_004.time, model7_004.signals(2).values);
title('Response with Discrete Controller at Sample time = 0.04');
legend('y_s', 'r');
xlabel('Time (sec)')
ylabel('Amplitude (rad)')


