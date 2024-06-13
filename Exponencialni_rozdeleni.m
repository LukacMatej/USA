% Př. 15: Doba opravy má exponenciální rozdělení. 
% Určete střední dobu opravy, jestliže do 60 
% minut je opraveno 30 % výrobků.
stredni_hodnota = -60/log(0.7);
lambda = 1/stredni_hodnota;

% Př. 16: Doba do poruchy zařízení má exponenciální
%  rozdělení s parametrem λ. Jaká je pravděpodobnost, že mezi
%  dvěma po sobě jdoucími poruchami uběhne alespoň 3/λ hodin. 
exp(-3);


% Př. 17: Výrobek má střední dobu do poruchy 3 roky. 
% Jaká je pravděpodobnost, že se porouchá v záruce, tj. v 
% prvních dvou letech provozu. 
expcdf(2,3);

% Př. 17a: V souboru P0517a.xlsx máte data o poruchách komponenty. 
% Data jsou v prvním sloupci. Určete:
% Parametry exponenciálního rozdělení
data = importdata('P0517a.xlsx');
data = data.List1(:,1);
EX = expfit(data);
% Zjistěte pravděpodobnost, že se komponenta porouchá do 10000 hodin
expcdf(10000,EX);
% Zjistěte pravděpodobnost, že na výrobku budou dvě poruchy komponenty za jeden rok, tj. 8640 h.
labmda = 8640/EX;
poisspdf(2,labmda);

% Př. 17b: Testuje se životnost 100 výrobků. Doba zkoušky trvá
% 10000 hodin. Celkem bylo zaznamenáno 79 poruch,
% viz soubor P0517b.xlsx. Výrobky po poruše nejsou nahrazeny
%  novými. V čase 10000 hodin je zkouška ukončena (21 výrobků). 
% Určete parametry exponenciálního rozdělení. 
data = readtable('P0517b.xlsx');
dataMatrix = readmatrix('P0517b.xlsx');
dataMatrix = dataMatrix(:);
cens = zeros(size(dataMatrix));
freq = ones(size(dataMatrix));
cens(end+1) = 1;
freq(end+1) = 21;
dataMatrix(end+1) = 10000;
EX = expfit(dataMatrix, 0.05, cens, freq);