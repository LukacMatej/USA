% Př. 26: Mějme naměřená data z 5 skupin (každá o 100 prvcích), která jsou uložena v souboru P0826.mat. Ověřte předpoklady a zjistěte, zda střední hodnota je u všech výběrů shodná. 
data = load('P0826.mat');
data = struct2cell(data);
data = cell2mat(data);
x = data;
group(1:100)=1;
group(101:200)=2;
group(201:300)=3;
group(301:400)=4;
group(401:500)=5;
group=group';
[p,stat]=vartestn(x,group,'on','classical');

%Ov��en� shody st�edn�ch hodnot anovou
[p,anovatab,stat]=anova1(x,group);
