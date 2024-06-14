% Př. 13: Byla zkoumána životnost 50 silně namáhaných výrobků, 
% životnost nelze popsat žádným jednoduchým rozdělením. 
% Otestujte Wilcoxonovým testem, zda medián životnosti je 
% 220 hodin.

% Data životnosti jsou následující (soubor P0812.mat).

x=[12, 15, 24, 32, 63, 69, 75, 87, 95, 121, 154, 159, 162, 187,191,201,212,218,223,241, 246, 249, 253, 259, 263, 269, 273, 291, 312, 313, 318, 323, 352, 356, 361, 368, 369, 371, 395, 521, 523, 561, 785,800,823,837,844, 954, 991, 1023];
[p,h,stats] = signrank(x,220,0.05);
