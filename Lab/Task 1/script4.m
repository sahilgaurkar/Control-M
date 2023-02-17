%1.3 DIGITAL CONTROL


%Constants
for T = [0.01, 0.04] %Sample Time


%Discrete Equivalent of Plant 'P' with ZOH
P_zoh = c2d(P, T, 'zoh');


%Compensator Transfer Function
Dd = c2d(K_B*D, T, 'matched');

%Poles, Zeros and Gain of Dd
[Num, Den] = tfdata(Dd,'v');
[zz,pp,K_d] = tf2zp(Num, Den);

%Get the Transfer Function without any Gain
Dd = Dd/K_d;

%Used Pole Zero Mapping analytically
%Num = [0 1 -0.9048];
%Den = [0 1 -0.3678];
%Discrete TF using emulation
%Dd = tf(Num, Den, T);
%Gain value calculated analytically at Cont. gain K_b
%K_d = 14.6096;


%Bode Plot 
figure('Name', 'Continious and Digital Compensator')
bode(K_B*D, 'b', K_d*Dd, 'r--')
legend K_B*D K_d*Dd
title(['Bode Plot of Cont and Discrete at T: ',num2str(T),' sec'])


%load Simulink Model into System
load_system('Model4.slx')
%Simulation Constants
%Simulation_time = 60;
out = sim('Model4.slx',Simulation_time);
%Plot Graph
figure('Name', 'Model4 Simulation-1');
plot(out.ScopeData.time, out.ScopeData.signals(2).values);
title(['Response at Sample Time: ',num2str(T),' sec'])
legend('y_s','r');
xlabel('Time (sec)')
ylabel('Amplitude')


end



