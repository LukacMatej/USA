% Př 20: Poruchovost degradujícího zařízení je 
% popsána Weibullovým rozdělením s parametry α=3 roky a parametr 
% β=1.5. Určete střední dobu do poruchy (střední hodnota) zařízení. 
% A určete pravděpodobnost, že se zařízení porouchá v době záruky, 
% tj. do dvou let. 
[m,v] = wblstat(3, 1.5);
wblcdf(2,3,1.5);

% Př. 21: Zjistěte z dat o poruchovosti výrobku, které jsou 
% uloženy v souboru P0521.mat, parametry Weibullova rozdělení. 
data = load('P0521.mat');
x = data.x;
[m,v] = wblfit(x);

% Př. 21a: Zjistěte z dat o poruchovosti výrobku, které jsou 
% uloženy v souboru P0521a.mat, parametry Weibullova rozdělení. 
data = load('P0521a.mat');
x = data.x;
[m,v] = wblfit(x);

% Př. 21b: Příklad vychází z P0517b.
% Testuje se životnost 100 výrobků. Doba zkoušky trvá 10000 hodin. 
% Celkem bylo zaznamenáno 79 poruch. Výrobky po poruše nejsou 
% nahrazeny novými. V čase 10000 hodin je zkouška ukončena (21 výrobků). 
% Určete parametry Weibullova rozdělení. 
% Vstupní data viz soubor P0521b.xlsx
data = importdata('P0521b.xlsx');
x = data.List1(:,1);
cens = zeros(size(x));
freq = ones(size(x));

x(end + 1) = 10000;
cens(end + 1) = 1;
freq(end + 1) = 21;

a = wblfit(x, 0.05, cens, freq)
