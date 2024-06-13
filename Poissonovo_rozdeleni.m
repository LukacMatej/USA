% Př. 16: Na 100 metrech látky se nachází 10 kazů.Jestliže 
% vybereme 20 metrový úsek látky,jaká je pravděpodobnost, že zde 
% není žádný kaz,
lambda = 10/100;% kazu na 10 metru
t = 20;
poisspdf(0,lambda*t);
% jsou zde právě 2 kazy,
poisspdf(2,lambda*t);
% je zde více než 5 kazů. 
1-poisscdf(5.5,lambda*t);

% Př. 17: Při sledování poruchovosti provozu se zjistilo, že 
% za 1 rok zde bylo na 10 strojích zaznamenáno 5 poruch. 
% Určete pravděpodobnost, že v následujících 2 letech bude na 
% 25 strojích zaznamenáno:
lambda = 5/10;
t = 2*25;
% Méně než 12 poruch,
poisscdf(11.5,lambda*t);
% Právě 20 poruch,
poisspdf(20,lambda*t);
% Více než 25 poruch.
1-poisscdf(25.5,lambda*t);

% Př. 18: Průměrný telefonní hovor trvá 1,5 min. Dochází-li 
% průměrně k 600 hovorům za hodinu, jaká je pravděpodobnost, 
% že se bude současně konat více než 30 hovorů. 
lambda = 1.5/60;
t = 600;
1-poisscdf(30.5,lambda*t);

% Př. 19: Průměrný telefonní hovor trvá 1,5 min. Kolik linek 
% musí ústředna mít, dochází-li průměrně ke 240 hovorům za 
% hodinu a pravděpodobnost ztráty volání nesmí překročit 0,01.
lambda = 1.5/60;
t = 240;
poissinv(0.99,lambda*t);


