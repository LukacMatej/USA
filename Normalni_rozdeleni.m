% Př. 25: Délka výrobku v mm má N(μ=50 mm;σ2=0,49mm2). 
% Určete pravděpodobnost, že rozměr výrobku bude mezi 49 a 51 mm. 
normcdf(51, 50, sqrt(0.49)) - normcdf(49, 50, sqrt(0.49));


% Př. 26: Výsledky měření jsou zatíženy jen normálně rozdělenou 
% náhodnou chybou se směrodatnou odchylkou 3 mm. 
% Jaká je pravděpodobnost, že při měření bude chyba v 
% intervalu (-2 mm, 5 mm).
pravd = normcdf(5,0,3) - normcdf(-2,0,3);
% Máte 3 výrobky, jaká je pravděpodobnost, že alespoň u jednoho 
% výrobku bude chyba mimo tento interval. 
b = binopdf(3,3,pravd);
b = 1-b;
b = 1-pravd^3;

% Př. 27: Výsledky radarového měření jsou zatíženy normálně 
% rozdělenou náhodnou chybou s nulovou střední hodnotou, 
% která s pravděpodobností 0.95 nepřesahuje 
% ± 20 m. Určete směrodatnou odchylku měření.
zmax=norminv((1+0.95)/2,0,1);
%zmin=-1.96    zmax=1.96

%z=(x-mu)/sigma, z toho z*sigma=x (mu je nula)
%+20 metr� odpov�d� 1.96 sigma
%-20 metr� odpov�d� -1.96 sigma

sigma=20/zmax;

% Př. 30: X je náhodná veličina s rozdělením % N(μ=10;σ2=20)
% . Jak velké musí být číslo x, aby náhodná veličina 
% nabyla hodnoty z intervalu (3, x) s pravděpodobností 25 %.
pravd=normcdf(3,10,sqrt(20));
pravd=pravd+0.25;
x=norminv(pravd,10,sqrt(20));

% Př. 31: Pravděpodobnost, že náhodná veličina nabude vyšší 
% hodnoty než 59.6 je 0.2119. Pravděpodobnost, že nabude 
% hodnoty menší než 57.2 je 0.7258. Náhodná veličina je z 
% normálního rozdělení. Vypočtěte hodnoty parametrů. 
Pa=1-0.2119;
za=norminv(Pa,0,1);
Pb=0.7258;
zb=norminv(Pb,0,1);
syms mu 
syms sigma positive
[mu,sigma]=solve((59.6-mu)/sigma==za, (57.2-mu)/sigma==zb);


