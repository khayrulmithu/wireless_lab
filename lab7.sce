clc;
clear;

pt=50;
f=900e6;
y=3e8/f;
d=100;

dbm = 10*log10(50*1000);
disp('Power in dbm = ',dbm);

dbw = 10*log10(50);
disp('Power in dbw = ',dbw);

pr = (pt*1*1*y*y)/( 4*3.1416*d )^2;

disp('Received Power = ',pr);

pr_dbm = 10*log10(pr*1000);

disp('Received Power in dbm = ',pr_dbm);

pr_10km = pr_dbm + 20*log10(100/10000);

disp('Received Power at 10km = ',pr_10km);
