% Př. 13: Při odhadu volebních výsledků chceme, aby 
% šířka intervalu volebního výsledku mající odhadem 20 % 
% hlasů byla maximálně 2 %. 
% Určete rozsah výběru pro 95% intervalový odhad.
z = norminv(0.975);
z^2*((4*0.2*0.8)/0.02^2);