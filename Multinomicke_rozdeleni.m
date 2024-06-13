% Př. 15b: Máte balíček mariášových karet. 10x losujete kartu, 
% kterou následně vracíte do balíčku. Určete pravděpodobnost, že:
% Vylosujete 8 karet a to buď spodky, filky, krále nebo esa.
binopdf(8,10,16/32);
% Vylosujete právě 2 esa, 3 krále, 2 filky a 1 spodka. 
mnpdf([2,3,2,1,2],[4/32,4/32,4/32,4/32,16/32]);
% Vypočtěte příklad ad a) a ad b), jestliže karty nevracíte zpět. 
% a)
hygepdf(8,32,16,10);
% b)
nchoosek(4,2)*nchoosek(4,3)*nchoosek(4,2)*nchoosek(4,1)*nchoosek(16,2)/nchoosek(32,10);
