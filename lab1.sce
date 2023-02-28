clc;
clear;


bandwidth = 30e6;
simplex = 25e3;

duplex = 2*simplex;

channel = int(bandwidth/duplex);
 
disp('total channel : ',channel);

N = (input("Enter cell reuse : "));

ch = int(channel/N);

disp('Total availabe channel per cell : ',ch);

control_channel = (1e6)/duplex;

disp('Total availabe control channel : ',control_channel);

voice= ( (channel-control_channel)/N );
ctrl= (control_channel/N);

disp('voice channel per cell = ',voice);

disp('control channel per cell = ',ctrl);


