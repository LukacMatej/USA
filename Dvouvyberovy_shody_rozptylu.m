% Př. 16: Balicí zařízení je seřízeno na začátku ranní směny a následně kontrolováno u odpolední směny. Byly zjištěny následující hodnoty hmotnosti výrobků:

% Ráno=[98.5, 98.6, 98.7, 98.7, 98.7, 98.8, 98.9, 99.2, 99.3, 99.3] g

% Odpoledne=[98.1,98.2, 98.3, 98.4, 98.6, 98.7, 98.8, 98.9, 99.0, 99.0] g

% Otestujte na hladině významnosti 5 %, zda je shodné seřízení stroje, tj. zda rozptyl hmotnosti výrobku je shodný.  

rano=[98.5, 98.6, 98.7, 98.7, 98.7, 98.8, 98.9, 99.2, 99.3, 99.3];
odpoledne=[98.1,98.2, 98.3, 98.4, 98.6, 98.7, 98.8, 98.9, 99.0, 99.0];

[h,p,ci,stats] = vartest2(rano,odpoledne,0.05);


