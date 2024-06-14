% Př. 9.15: Studenti ve třídě mají následující výšku. Ověřte na hladině významnosti 5 %, zda výška studentů splňuje normální rozdělení. Pokud data splňují normální rozdělení, zjistěte optimální parametry normálního rozdělení. 

vyska=[162,167,170,171,172,175,178,179,180,181,182,184,185,187,191,195];

[h,p,kstat,critval] = lillietest(vyska,0.05,'norm') % test normality