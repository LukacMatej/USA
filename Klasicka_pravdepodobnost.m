% Pr 3
% Dřevěnou kostku o straně 5 cm natřeme na červeno a 
% rozřežeme na krychle o hraně 1 cm. Určete pravděpodobnost,
% že vylosujete krychličku, která
% a) Nebude obarvena
vsechny = 5^3;
neob = 3^3;
kolik_chceme_z_neob = 1;
kolik_chceme_z_vsech = 1;
hygepdf(kolik_chceme_z_neob, vsechny, neob, kolik_chceme_z_vsech);
% b) Bude obarvena na jedne strane
hygepdf(1, 125, 6*9, 1);
% c) Bude obarvena na dvou stranach
hygepdf(1, 125, 12*3, 1);
% d) Bude obarvena na trech stranach
hygepdf(1, 125, 8, 1);

% Pr 4
% Máme 10 druhů minerálek. 6 je perlivých, zbývající neperlivé.
% Určete pravděpodobnost, že z náhodně vybraných 3 
% minerálek budou
% a) všechny perlivé
hygepdf(3,10,6,3);
% b) alespoň jedna perlivá
hygepdf(1,10,6,3);

% Pr 5
% Ve hře šťastných deset je v osudí 80 míčků, z nichž se 
% losuje 20. Sázející vybere 10 čísel. 
% Určete pravděpodobnost, že uhádne právě 0 až 10 čísel. 
hygepdf(0,80,10,20);
hygepdf(1,80,10,20);

% Pr 6
% 20 studentů má být rozděleno na 4 stejně početné skupiny. 
% Jaká je pravděpodobnost, že A a B budou ve stejné skupině?

% Pr 7
% Jaká je pravděpodobnost, že z náhodně poskládaných 
% písmen A,A,B,C,D,E,E sestrojíte slovo ABECEDA?
vysl=4/factorial(7);

% Pr 8
% Jaká je pravděpodobnost, že mezi 3 mariášovými kartami 
% náhodně vytažených z balíčku bude právě 1 eso?
hygepdf(1,32,4,3);

% Pr 10
% Postupně vyndávám koule z urny, kde jsou 3 bílé, 5 černých 
% a 4 červené koule. Jaká je pravděpodobnost, 
% že červenou vytáhnu dříve než bílou? Koule nevracíme. 
vysle=4/7;

