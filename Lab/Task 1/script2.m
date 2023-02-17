%1.2 Continuous Time Controller

%1.2.1 Controller Design

Num = [0 10 100];
Den = [0 1 100];
D = tf(Num, Den);

%At K = 1
K = 1;

%Compensator
C = K*D;

%Loop Gain
L = C*P;


%Bode Plot 
figure(3)
bode(P,C,L)
legend P C L
%legend('P(s)','C(s)','L(s)')
title('Bode Plot of Plant(P), Compensator (C) and Loop gain (L)')


[PlantGm, Plant_Pm, Plant_Wcg, Plant_Wcp] = margin(P);
[Loop_Gm, Loop_Pm, Loop_Wcg, Loop_Wcp] = margin(L);

%Root Locus Plot for K = 0 to 5
K = 0:0.001:5;
figure(4)
rlocus(L, K);
title('Root Locus')


%1.2.2 Simulation with Simulink


%Gain Values obtained from Root Locus
K_A = 0.2;
K_B = 2.2;


%load Simulink Model into System
load_system('Model2.slx')

%Simulation Constants
Simulation_time = 60;

%Simulate at Gain 0.2
set_param('Model2/Manual Switch', 'sw', '0');
out = sim('Model2.slx',Simulation_time);

%Plot Graph
figure('Name', 'Model2 Simulation-1');
%plot(out.ScopeData.time, out.ScopeData.signals(1).values, out.ScopeData.time, out.ScopeData.signals(2).values);
plot(out.ScopeData.time, out.ScopeData.signals(2).values);
title('Response at Gain 0.2');
legend('y_s','r');
xlabel('Time (sec)')
ylabel('Amplitude')

%Simulate at Gain 2.2
set_param('Model2/Manual Switch', 'sw', '1');
out = sim('Model2.slx',Simulation_time);

%Plot Graph
figure('Name', 'Model2 Simulation-2');
plot(out.ScopeData.time, out.ScopeData.signals(2).values);
title('Response at Gain 2.2');
legend('y_s','r');
xlabel('Time (sec)')
ylabel('Amplitude')


%1.2.3 Nyquist Analysis


figure('Name', 'Model2 Nyquist Plot');
nyquist(K_A*L,K_B*L)
legend('K_A','K_B')
title('Nyquist Plot')


% Data from Graph at Minumum Stability
%System: K_A
%Phase Margin (deg): 87.3
%Delay Margin (sec): 0.32
%At frequency (rad/s): 4.76
%Closed loop stable? Yes
%System: K_B
%Phase Margin (deg): 64.7
%Delay Margin (sec): 0.0238
%At frequency (rad/s): 47.4
%Closed loop stable? Yes



figure('Name', 'Model2 Bode Plot');
bode(K_A*L,K_B*L)
legend K_A K_B
title('Bode Plot')

