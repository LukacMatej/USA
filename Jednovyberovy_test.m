% Př. 1: Stroj na sáčkování smažených brambůrků vyrábí 
% 100 gramové sáčky. Stroj má povolenou maximální 
% směrodatnou odchylku 1.5 g na jeden 
% sáček (rozptyl 2.25 g2). Data jsou uložena v 
% souboru P0801.mat.
% H0 rozptul je mensi nebo rovno 2.25g2
% H1 rozptyl je vetsi nez 2.25g2
data = load('P0801.mat');
data = data.x;
[h,p,ci,stats] = vartest(data,2.25,0.05,'right');




