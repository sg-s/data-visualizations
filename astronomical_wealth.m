
close all

black_holes = ["GW170817", 2.7;     % smallest known, found by LIGO
"M33 X-7", 16;
"GW190521", 142;
"Sagittarius A*", 4e6; % supermassive black hole
"Cygnus A", 2.5e9;
"Messier 87", 6.5e9;
"OJ 287", 18e9]; % Ultramassive black hole 



money = ["DC Minimum wage", 2;
"Median US \newlinesavings account",  482.7586;
"Median 1BR rent",  1.8174e+03;
"Ford F-150", 4040;
"Median CA house", 10942;
"Pelosi wealth", 1.3793e+07;
"Bezos wealth (2010)", 1.7379e+09;
"Bezos wealth (2021)", 2.6621e10];



figure('outerposition',[30 30 500 1111],'PaperUnits','points','PaperSize',[500 1111]); hold on

C = colormaps.redula(length(black_holes));

sizes = str2double(black_holes(:,2));
wealth = str2double(money(:,2));

xpos = [1 2];
padding = .25;

guide_color = [.8 .8 .8];

plot([xpos(1) xpos(1)],[1 max(sizes)],'Color',guide_color,'LineWidth',3)
plot([xpos(2) xpos(2)],[1 max(wealth)],'Color',guide_color,'LineWidth',3)

for i = 1:length(sizes)
	plot(xpos(1),sizes(i),'.','MarkerSize',50,'Color',C(i,:))
	text(xpos(1)-padding,sizes(i),black_holes(i,1),'HorizontalAlignment','right')
	
end

C = colormaps.redula(length(wealth));
for i = 1:length(wealth)
	plot(xpos(2),wealth(i),'.','MarkerSize',50,'Color',C(i,:))
	th = text(xpos(2)+padding,wealth(i),money(i,1),'HorizontalAlignment','left');
end

set(gca,'YScale','log','XLim',[-1.5 5])
x = ["x Mass of \newlinethe sun","x Federal \newlineminimum wage"];
set(gca,'YGrid','on','XTick',xpos,'XTickLabel',"",'YMinorGrid','on')

figlib.pretty;

th = text(xpos(1),.4,{'units of ','solar mass'},'FontSize',20,'HorizontalAlignment','right');
th = text(xpos(1)+1,.4,{'units of federal','minimum wage'},'FontSize',20,'HorizontalAlignment','left');


 title({'Visualizing late stage capitalism',' using black holes'},'FontWeight','bold','Color',[.5 .5 .5]);

% sources:
% https://www.fool.com/the-ascent/research/average-house-price-state/
% https://www.fool.com/the-ascent/research/average-savings-account-balance/
% https://www.bls.gov/ooh/education-training-and-library/mobile/high-school-teachers.htm
% https://worldpopulationreview.com/state-rankings/average-rent-by-state