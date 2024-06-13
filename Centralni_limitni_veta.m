% Př. 7: Máte vygenerováno 1000 náhodných čísel z
% rovnoměrného rozdělení <0,1>. Určete pravděpodobnost,
% že průměr všech vygenerovaných čísel bude vyšší než 0.520.

x = unifrnd(0,1,1000,1);
mu = 0.5;
sigma2 = (0-1)^2/12/1000;
sigma = sqrt(sigma2);
P = 1-normcdf(0.52,mu,sigma);


% Př. 8: Životnost komponenty má exponenciální rozdělení 
% se střední hodnotou 5 let. Určete pravděpodobnost, 
% že 100 náhodně vybraných komponent bude mít v průměru 
% životnost nižší než 4 roky.
data = exprnd(5,100,1);
mu = 5;
sigma2 = 25/100;
normcdf(4,mu,sqrt(sigma2));

% Př. 9: Zatížení letadla s 64 místy nemá překročit 6000 kg. 
% Jaká je pravděpodobnost, že při plném obsazení bude tato 
% hodnota překročena, má-li hmotnost cestujícího střední 
% hodnotu 90 kg a směrodatnou odchylku 10 kg.
mu = 90 * 64;
sigma2 = 10^2 * 64;
sigma = sqrt(sigma2);
1-normcdf(6000,mu,sigma);

% Př. 10: Počet chyb na jedné straně textu má střední 
% hodnotu 3 a rozptyl 4. Jaká je pravděpodobnost, že na 
% 400 stranách bude méně než 1000 chyb. 
mu = 3;
sigma2 = 4;
mu = mu * 400;
sigma2 = sigma2 * 400;
sigma = sqrt(sigma2);
normcdf(1000,mu,sigma);

% Př. 11: Stokrát hodíme šestistěnnou kostkou. Jaká je 
% pravděpodobnost, že součet hodů bude mezi 320 a 380.
mu = 3.5;
sigma2 = 2*((1-3.5)^2+(2-3.5)^2+(3-3.5)^2)/6;
mu = mu * 100;
sigma2 = sigma2 * 100;
sigma = sqrt(sigma2);
P = normcdf(380.5,mu,sigma) - normcdf(319.5,mu,sigma);