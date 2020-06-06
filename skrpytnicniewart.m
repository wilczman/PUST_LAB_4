U1=table2array(a(:,5));
U2=table2array(a(:,6));
Y1=table2array(a(:,7));
Y2=table2array(a(:,8));

U1Y1_cutlet=Y1(675330:945962,1);
U1Y2_cutlet=Y2(675330:945962,1);

aU1Y1v2 = (U1Y1_cutlet-30)/(30);
aU1Y2v2 = (U1Y2_cutlet-35)/(30);

U2Y1_cutlet=Y1(131626:292938,1);
U2Y2_cutlet=Y2(131626:292938,1);

aU2Y1v2 = (U2Y1_cutlet-30)/(30);
aU2Y2v2 = (U2Y2_cutlet-35)/(30);


% figure;
% stairs(Ypp1);title('Wartoœæ wyjœcia Y1');xlabel('k');ylabel('wartoœæ sygna³u');ylim([-5,20]);
% legend('Sygna³ wyjœciowy','Wartoœæ zadana','Location','southeast');
% matlab2tikz('Y1pp.tex' ,'showInfo',false);
% 
% figure;
% stairs(Upp1);title('Wartoœæ wejœcia U1');xlabel('k');ylabel('wartoœæ sygna³u');ylim([-5,40]);
% legend('Sygna³ steruj¹cy','Location','southeast');
% matlab2tikz('U1pp.tex','showInfo',false);

figure;  plot(aU1Y1v2)
figure;  plot(aU1Y2v2)
figure;  plot(aU2Y1v2)
figure;  plot(aU2Y2v2)
 