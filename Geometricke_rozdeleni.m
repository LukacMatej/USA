% Př. 13: Házíte kostkou. Určete pravděpodobnost, že právě 
% u pátého hodu Vám padne poprvé šestka.
geopdf(4,1/6);

% Př. 14: Dva hráči střídavě házejí kostkou. Vyhrává ten, 
% kdo první hodí šestku. Jaká je pravděpodobnost, že 
% vyhraje ten, který začínal. 
geopdf(1,1/6);

% Př. 15: Distributor prodává knihu. 10 % knihkupců ji zakoupí. 
% Jaká je pravděpodobnost, že distributor bude poprvé úspěšný:
% Právě u 5 návštěvy knihkupectví,
geopdf(4,0.1);
% Do 5 návštěvy (5. již neuvažujeme),
geocdf(3.5,0.1);
% Při osmé a více návštěvě. 
1-geocdf(6.5,0.1);

