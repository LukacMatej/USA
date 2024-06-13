% Př. 10: Při provádění průzkumu 400 respondentů uvedlo 12 %, 
% že by volilo Stranu mírného pokroku v mezích zákona. 
% Vypočtěte 95% interval spolehlivosti pro očekávanou 
% relativní četnost. Jak se změní interval spolehlivosti, 
% jestliže se budeme ptát 1600 respondentů. 
n = 400;
p = 0.12;
alpha = 0.05;
Ci = [p-sqrt(p*(1-p)/n)*norminv(1-alpha/2,0,1),p+sqrt(p*(1-p)/n)*norminv(1-alpha/2,0,1)];
% Zdůvodněte, proč je šířka intervalu u 1600 respondentů poloviční, oproti 400 respondentů. 
n = 1600;
Ci = [p-sqrt(p*(1-p)/n)*norminv(1-alpha/2,0,1),p+sqrt(p*(1-p)/n)*norminv(1-alpha/2,0,1)];

