% Př. 9.22: Máte následující data: x=[3,5,9,12,15,17,21,24] a y=[5,8,12,12,15,17,19,24,25,28]. Ověřte, zda data jsou ze shodného rozdělení. Ověřte, zda data z vektoru x a y jsou z normálního rozdělení. 

x=[3,5,9,12,15,17,21,24];
y=[5,8,12,12,15,17,19,24,25,28];

[h,p,kstest] = kstest2(x,y) % test shodnosti rozdělení
