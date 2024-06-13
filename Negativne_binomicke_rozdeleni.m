% Př. 15a: Pravděpodobnost výskytu krevní skupiny A+ je 0.35. 
% V nemocnici potřebují najít 3 dárce s touto krevní skupinou. 
% Dárcové však neznají svojí krevní skupinu. Jaká je pravděpodobnost, 
% že pro nalezení právě 3. dárce s krevní skupinou A+ budou 
% muset vyšetřit:
% právě 10 dárců,
nbinpdf(7,3,0.35);
% více jak 9 dárců,
1-nbincdf(6.5,3,0.35);
% aspoň 6 (včetně) a nejvýše 10 dárců (včetně).
nbincdf(7.5,3,0.35)-nbincdf(2.5,3,0.35);
