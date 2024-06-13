% Př. 8: Mějme data: x=[-6,-3,-1,0,2,3,5,6,7,8,9,11,12,14,15,18,22,28,32,37,41]. 
% Otestujte na hladině významnosti 5 % znaménkovým testem, 
% zda medián je roven 25.
x=[-6,-3,-1,0,2,3,5,6,7,8,9,11,12,14,15,18,22,28,32,37,41];
[p,h] = signtest(x,25,0.05);