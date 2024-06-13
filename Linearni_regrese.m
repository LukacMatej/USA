% Př. 1: Nalezněte parametry lineární regrese (y=ax+b) pro 
% následující data: x=[3,5,8,11,12,14,15]; 
% y=[6,11,15,22,25,27,30];. Určete parametry a zjistěte, 
% zda parametr b se může rovnat 0. Vysvětlete výslednou tabulku. 
x=[3,5,8,11,12,14,15];
y=[6,11,15,22,25,27,30];
fitlm(x,y);
% y = ax + b


% Př. 2: Nalezněte parametry lineární regrese 
% pro následující data: x=[2,5,8,11,5,10,6]; 
% y=[6,11,15,22,25,27,30];. Vykreslete data. 
% Je daný model lineární regrese vhodný? Vysvětlete. 
x=[2,5,8,11,5,10,6];
y=[6,11,15,22,25,27,30];
fitlm(x,y);


% Př. 3: Nalezněte parametry lineární regrese pro 
% data uložená v souboru P1103.xlsx. V prvním sloupci 
% jsou hodnoty pro vektor x, 
% ve druhém sloupci pro vektor y. 
data = readtable('P1103.xlsx');
x = data.x;
y = data.y;
fitlm(x,y);

% Př. 6: Nalezněte parametry regresního modelu: 
% z=a+bx+cy pro naměřená data: x=[2,4,5,6,7,8,9,10]'
% ; y=[1,2,3,4,5,6,7,8]';
%  z=[6,11,14,15,18,23,26,31]';. 
% Vstupní data musejí být sloupcové vektory.
x=[2,4,5,6,7,8,9,10]';
y=[1,2,3,4,5,6,7,8]';
z=[6,11,14,15,18,23,26,31]';
x = [x y];
fun = @(b,x) b(1) + b(2)*x(:,1) + b(3)*x(:,2);
b0 = [0 0 0];
b = fitnlm([x y],z,fun,b0);


% Př. 13: Máte data v souboru P1113.xlsx. V prvním 
% sloupci jsou hodnoty pro vektor x, ve druhém pro
% vektor y. 
data = readtable('P1113.xlsx');
x = data.x;
y = data.y;
% Určete výsledky regresního modelu y=c* sin⁡(ax+b)
% Počáteční vektor uvažujte c=5, a=1/3, b=1. 
% Zjistěte koeficient determinace a určete vhodnost 
% modelu.
fun = @(b,x) b(1)*sin(b(2)*x + b(3));
b0 = [5 1/3 1];
NLM = fitnlm(x,y,fun,b0)
plot(NLM)


% Uvažujme stejné zadání jako v a). Ale počáteční vektor uvažujte c=1, a=1, b=0. Zdůvodněte, proč jsou odlišné od předchozích?

% Vykreslete data a proložení do grafu. 
