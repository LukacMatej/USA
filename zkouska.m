% Na libereckých kolejích TUL v hospůdce Kulečník u Hrocha hraje každý týden 6 kamarádů společenskou hru "4 krále". Hra spočívá v tom, že se zamíchá mariášový balíček karet a každý postupně si vylosuje jednu kartu. Takto se postupuje do té doby, dokud nebude vylosována poslední karta. 
% Principem hry je, že ten kdo vylosuje prvního krále, bude vybírat prvního panáka. Ten kdo vylosuje druhého krále, tak druhého panáka. Třetí kdo vylosuje krále, tak oba panáky pije. A hráč losující čtvrtého krále, tak to platí. 
% 
% b) Karty se nevrací do balíčku. Sedíte na třetí pozici, tj. losujete 3., 9., 15.,  21. a 27. kartu. Jaká je pravděpodobnost, že vylosujete právě 3. krále.
nbincdf(17.5,3,1/8);
hygepdf(1,29,4,4)*hygepdf(1,23,3,3)*hygepdf(1,17,2,2);
% a) Předpokládejte, že vylosované karty vrací do balíčku. Vypočtěte pravděpodobnost, že třetí král bude vylosován do (včetně) 20. karty.
(hygepdf(1,30,2,2)+hygepdf(1,24,2,2)+hygepdf(1,18,2,2)+hygepdf(1,12,2,2)+hygepdf(1,6,2,2)) / 5
4/32*3/31*28/30*4/28;