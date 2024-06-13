% Př. 21: HDD dvou velkých výrobců - DISK a EMEM byly 
% podrobeny zkoušce kvality. HDD obou výrobců jsou baleny 
% po 20 kusech. Ve 40 balících firmy DISK bylo nalezeno 24 
% vadných HDD, ve 30 balíčcích EMEM bylo nalezeno 14 vadných
%  HDD. Se spolehlivostí 0,95 určete intervalový odhad 
% rozdílu relativních četností (procent) vadných HDD v 
% celkové produkci firem DISK a EMEM.
n1=40*20; n2=30*20; p1=24/(40*20); p2=14/(30*20); p=(24+14)/(40*20+30*20);
Ci=[(p1-p2)-sqrt(p*(1-p)*(1/n1+1/n2))*norminv(0.975,0,1),(p1-p2)+sqrt(p*(1-p)*(1/n1+1/n2))*norminv(0.975,0,1)];
