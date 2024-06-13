% Př. 5: Spotřeba téhož auta byla testována u 11 řidičů s výsledky 
%  (l/100 km). Lze přijmout hypotézu danou výrobcem, že spotřeba je rovna 8.8 l/100 km? Lze na hladině významnosti 5 % přijmout tvrzení, že rozptyl spotřeby je 0,1? 
Spotreba=[8.8, 8.9, 9.0, 8.7, 9.3, 9.0, 8.7, 8.8, 9.4, 8.6, 8.9];
[h,p,ci,stats] = ttest(Spotreba,8.8,0.05,'both');
[h,p,ci,stats] = vartest(Spotreba,0.1,0.05,'both');

