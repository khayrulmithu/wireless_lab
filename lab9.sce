clc;
clear;

f=900e6;
y=3e8/f;

d=50e3;
Amu = 43;
Garea = 9;

Lf = -10*log10( (y*y)/(4*3.1416*d)^2 );
disp('Free space Path loss = ',Lf);

hte = 100;
Ghte = 20*log10(hte/200);

hre=10;
Ghre = 20*log10(hre/3);

L50 = Lf+Amu-Ghte-Ghre-Garea;
disp('Total mean Path loss = ',L50);

EIRP_dbm = 10*log10(1e3*1e3);

pr = EIRP_dbm-L50+10;

disp('Received Power in dbm = ',pr);
