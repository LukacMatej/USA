% Př. 23: Mějme naměřená data ve vektorech x a y. Otestujte na hladině významnosti 5 %, zda median je shodný. Testu obvykle předchází testování shody rozptylů. Předpokládáme, že typ rozdělení je shodný (testování se naučíme v kapitole 9). 
x=[12,14,16,18,19,19,21,23,25,27,31,35,39,42];
y=[15,18,21,24,27,29,32,35];

[p,h,stats]=ranksum(x,y,0.05,'method','exact','tail','both');


