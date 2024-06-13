% Př. 2: Mějte data 0.1; 0.2; 0.3; … ; 0.8; 0.9 a 1. 
% Vypočtěte vyběrovou střední hodnotu, rozptyl , směrodatnou 
% odchylku a výběrovou šikmost. Jak se změní tyto 
% charakteristiky, jestliže data budou vynásobena 10.
x = 0.1:0.1:1;
y=10*x;
n=length(x);

strhod_x=mean(x);
strhod_y=mean(y);

rozpt_x=var(x);
rozpt_y=var(y);

smodch_x=std(x);
smodch_y=std(y);

sikmost_x=kurtosis(x);
sikmost_y=kurtosis(y);

spicatost_x=skewness(x);
spicatost_y=skewness(y);