clc;
clear;
close all;

fm = 5;              %We have identified a sinusoidal message signal with a frequency of 5 Hz.

fs = 100;           %We defined the sampling frequency value given to us in subtask 1 as 100 Hz as requested.
fc = 20;            %As requested from us in Subtask 2, we defined the carrier frequency value as 20 Hz.
t = (0:0.01:50);    %In this line, we have defined the time vector in this way so that the intervals of the values that will occur between 0 and 50 seconds requested from us can be 0.01.

m = sin(2*pi*fm*t);  %In this line, we produced a sinusoidal message wave with a frequency value of 5 Hz, which we defined for the variable m.
s = ammod(m,fc,fs); %We modulated the 'm' signal using matlab's ammod function and defined the resulting value as the s signal.

AmmodsignalDSBSC = amDSBSC(m, fc, fs); %We modulated the m signal with the function we defined in our amDSBSC file without using the built-in function of Matlab. We defined the result we obtained to the Ammodsignal variable.


figure(1); %I have displayed my plots in a single figure.
f = gcf;
f.Color = [0.7 0.8 0.9];
subplot(2,1,1)
grid on
hold on
plot(t,m,'--r','linewidth',2)
plot(t,s,'b')
xlim([0 2])
legend('Message signal','Modulated signal')

%We had plotted the original m message and modulated signals, and with the 'xlim' command, we were able to set the time between the value 0 and 2. 
subplot(2,1,2);
grid on
hold on
plot(t,AmmodsignalDSBSC,'--xr','linewidth',1)
plot(t,s,'B')
xlim([0 2])
legend('Ammod signal (DSBSC)','Modulated signal')
%In this plot process, we graphed the modulated signal we obtained from the function we created ourselves, and while doing this graphing, we selected the time interval 0 and 2.