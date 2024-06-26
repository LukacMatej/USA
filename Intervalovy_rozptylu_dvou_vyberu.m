% Př. 17: Stroj vyrábějící komponenty potřebuje jednou 
% za čas setřídit. Při testování několika výrobků po 
% 20 hodinách nepřetržitého provozu jsme obdrželi následující 
% hodnoty určitého rozměru. Obdobně jsme testovali také 
% po 50 hodinách nepřetržitého provozu. 
x20=[3.96,4.03,4.07,4.12,4.16,4.18,4.20,4.22,4.23,4.24,4.24,4.25,4.29,4.32,4.35,4.38,4.41,4.44];
x50=[4.02,4.07,4.11,4.16,4.22,4.28,4.32,4.36,4.40,4.42,4.46,4.48,4.51,4.52,4.54,4.58,4.62,4.73];

% Velikost rozptylu u stroje ukazuje, zda je třeba stroj 
% setřídit či nikoliv. Zjistěte 99% intervalový odhad 
% podílů rozptylu.
var(x20)/var(x50);
[h,p,ci] = vartest2(x20,x50,0.01);


