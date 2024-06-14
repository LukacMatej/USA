% Př. 15a: Doba do poruchy nedegradujícího výrobku je popsána 
% exponenciálním rozdělením. Prováděla se zkouška 50 výrobků 
% po dobu 1000 hodin. Po poruše nebyly výrobky nahrazovány. 
% Bylo zjištěno 10 poruch, u ostatních 40 výrobků byla zkouška 
% ukončena v čase 1000 hodin.

Tporuch=[80,160,240,320,400,560,720,800,900,960];
% Určete na hladině významnosti 5 %, zda střední doba do 
% poruchy je rovna 3000 h. 
alpha = 0.05;
T = [Tporuch,1000];
cens = [zeros(1,10),1];
freq = [ones(1,10),40];
[par, io] = expfit(T, alpha, cens, freq);



