% Př. 19: V roce 1980 jsme se dostali rychlíkem z Prahy 
% do Brna za t1980=[243,251,257,257,259,261,263,265,284, 293] 
% minut. Obdobně v roce 2015 jsme stejnou cestu absolvovali 
% za t2015=[191,193,193,195,195,195,197,198,199,202,202,203,204,205,207,208] 
% minut. Zjistěte 99% intervalový odhad zrychlení cesty.
t1980=[243,251,257,257,259,261,263,265,284, 293];
t2015=[191,193,193,195,195,195,197,198,199,202,202,203,204,205,207,208];
[h,p,ci] = ttest2(t1980,t2015,0.01);


