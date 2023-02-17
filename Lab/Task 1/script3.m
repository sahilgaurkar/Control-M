
%System response with Transport Delay

%load Simulink Model into System
load_system('Model3.slx')

%Simulation Constants
Simulation_time = 60;



%Simulate at Gain 2.2 (K_B) and Time Delay = 0.022
set_param('Model3/Manual Switch', 'sw', '1');
set_param('Model3/Transport Delay', 'DelayTime', '0.022')
out = sim('Model3.slx',Simulation_time);

%Plot Graph
figure('Name', 'Model3 Simulation-1');
plot(out.ScopeData.time, out.ScopeData.signals(2).values);
title('Response at Gain 2.2 and Time Delay = 0.022');
legend('y_s','r');
xlabel('Time (sec)')
ylabel('Amplitude')

%Simulate at Gain 2.2 (K_B) and Time Delay = 0.025
set_param('Model3/Manual Switch', 'sw', '1');
set_param('Model3/Transport Delay', 'DelayTime', '0.025')
out = sim('Model3.slx',Simulation_time);

%Plot Graph
figure('Name', 'Model3 Simulation-1');
plot(out.ScopeData.time, out.ScopeData.signals(2).values);
title('Response at Gain 2.2 and Time Delay = 0.025');
legend('y_s','r');
xlabel('Time (sec)')
ylabel('Amplitude')

