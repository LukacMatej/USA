% Př. 19: Jak by dopadl výsledek testování vlivu tepelné úpravy z párového testu (př. 7), jestliže bychom neznali informaci, že testování proběhlo na stejných kusech. Data jsou z normálního rozdělení. Zjistěte na hladině význanosti 5 %, zda je shodná hodnota parametru (
% H0:μ1=μ2, H1:μ1≠μ2).
x=[35.0,36.0,36.3,36.8,37.2,37.6,38.3,39.1,39.3,39.6,39.8;37.2,38.1,38.2,37.9,37.6,38.3,39.2,39.4,39.7,39.9,39.9];
[p,h] = ttest2(x(1,:),x(2,:),0.05,0);



