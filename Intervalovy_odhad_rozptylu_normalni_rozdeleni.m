% Př. 8: Deset balíčků mouky pocházející z balícího stroje 
% mělo hmotnost v gramech: 987, 1001, 993, 994, 993, 
% 1005, 1007, 999, 995 a 1002. Sestrojte 
x = [987, 1001, 993, 994, 993, 1005,1007, 999, 995, 1002];
% 95% interval spolehlivosti pro rozptyl a 
% směrodatnou odchylku hmotnosti. 
[h,p,ci,stats] = vartest(x,0.05);
sqrt(ci);
% 95% jednostranný interval spolehlivosti pro 
% odhad maximální hodnoty rozptylu.
[h,p,ci,stats] = vartest(x,max(x),0.05,'left');


% Př. 9: U 100 náhodně vybraných výrobků činila průměrná 
% hmotnost materiálu 150 g a výběrový rozptyl byl 16 g2. 
% Sestrojte 95% interval spolehlivosti pro 
% očekávanou hmotnost materiálu a jeho rozptyl. 
mu = 150;
s2 = 16;
n = 100;
sd=sqrt(s2);
mu_min=mu-(sd/sqrt(n))*tinv(0.975,n-1)
mu_max=mu+(sd/sqrt(n))*tinv(0.975,n-1)
sd2_min=((n-1)*sd2)/chi2inv(0.975,n-1)
sd2_max=((n-1)*sd2)/chi2inv(0.025,n-1)