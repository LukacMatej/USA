% Př. 3: Deset balíčků mouky pocházející z balícího stroje 
% mělo hmotnost v gramech: 987, 1001, 993, 994, 993, 1005, 
% 1007, 999, 995 a 1002. Sestrojte:
x = [987, 1001, 993, 994, 993, 1005,1007, 999, 995, 1002];
% 95% interval spolehlivosti pro střední hodnotu,
stredni = mean(x);
[h,p,ci,stats] = ttest(x,stredni,0.05);
% 90% interval spolehlivosti pro střední hodnotu,
[h,p,ci,stats] = ttest(x,stredni,0.1);
% 95% interval spolehlivosti pro minimální hmotnost. 
[h,p,ci,stats] = ttest(x,min(x),0.05,'right');


% Př. 5: Naměřili jsme 10 údajů o životnosti 
% žárovky: 380, 402, 408, 412, 454, 459, 472, 481, 491, 502 
% hodin. Odhadněte, zda data jsou z normálního rozdělení 
% (například pravděpodobnostním papírem) a dale určete 95% 
% intervalový odhad střední hodnoty životnosti žárovky. 
% Určete i 95% jednostranný intervalový odhady pro minimální 
% a maximální odhad střední hodnoty. Interpretujte výsledky. 
x = [380, 402, 408, 412, 454, 459, 472, 481, 491, 502];
[h,p] = lillietest(x);
[h,p,ci,stats] = ttest(x,500,0.05,'both');
[h,p,ci,stats] = ttest(x,500,0.05,'right');
[h,p,ci,stats] = ttest(x,500,0.05,'left');


% Př. 6: V prodejně si udělali průzkum, kolik zákazníků 
% přijde do obchodu během jednoho dne. Byly zjištěny 
% následující data:
x=[541,574,585,596,612,618,632,641,654,671,681,692,711,713,718,719,754,796,812,815,835,858];
% Ověřte, že data jsou z normálního rozdělení. Zjistěte 99% interval spolehlivosti odhadu střední hodnoty. 
[h,p] = lillietest(x);
[h,p,ci,stats] = ttest(x,mean(x),0.01);


