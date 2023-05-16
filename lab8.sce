clc;
clear;

f=900e6;
y=3e8/f;

L=y/4;
disp('Length of the antenna = ',L);
G = 10^(0.255);
A= (G*y*y)/(4*3.1416);
disp('Effective aperture of the antenna = ',A);

E=1/1e3; d0=1e3; ht=50; hr=1.5; d=5e3;
Er = (2*E*d0*2*3.1416*ht*hr)/(d*y*d); // electric field

disp(Er);

Pr = (Er*Er*A)/(120*3.1416);
disp(Pr);

pr_dbw = 10*log10(Pr);
disp('Received power at dbw = ',pr_dbw);

pr_dbm = 10*log10(Pr*1000);
disp('Received power at dbm = ',pr_dbm);
