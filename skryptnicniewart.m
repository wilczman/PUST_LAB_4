clear all;
load PktPracy.mat
U1=table2array(PktPracy(1:160,5));
U2=table2array(PktPracy(1:160,6));
Y1=table2array(PktPracy(1:160,7));
Y2=table2array(PktPracy(1:160,8));

% figure;  plot(Y1)
% figure;  plot(Y2)

% U1Y1_cutlet=Y1(675330:905205,1); %945962
% U1Y2_cutlet=Y2(675330:905205,1);
% 
% aU1Y1v2 = (U1Y1_cutlet-12.2)/(30);
% aU1Y2v2 = (U1Y2_cutlet-13.25)/(30);
% 
% U2Y1_cutlet=Y1(131626:361501,1);%392938
% U2Y2_cutlet=Y2(131626:361501,1);
% 
% aU2Y1v2 = (U2Y1_cutlet-12.2)/(30);
% aU2Y2v2 = (U2Y2_cutlet-13.25)/(30);
% 
% 
% figure;
% stairs(Ypp1);title('Wartoœæ wyjœcia Y1');xlabel('k');ylabel('wartoœæ sygna³u');ylim([-5,20]);
% legend('Sygna³ wyjœciowy','Wartoœæ zadana','Location','southeast');
% matlab2tikz('Y1pp.tex' ,'showInfo',false);
% 
% figure;
% stairs(Upp1);title('Wartoœæ wejœcia U1');xlabel('k');ylabel('wartoœæ sygna³u');ylim([-5,40]);
% legend('Sygna³ steruj¹cy','Location','southeast');
% matlab2tikz('U1pp.tex','showInfo',false);
% 
% % figure;  plot(aU1Y1v2);
% % figure;  plot(aU1Y2v2);
% % figure;  plot(aU2Y1v2);
% % figure;  plot(aU2Y2v2);
% 
% % 1138 próbek zrób;
% for i=0:1137
%     reduced_U1Y1(i+1,1) = aU1Y1v2(i*202+1,1);
%     reduced_U1Y2(i+1,1) = aU1Y2v2(i*202+1,1);
%     reduced_U2Y1(i+1,1) = aU2Y1v2(i*202+1,1);
%     reduced_U2Y2(i+1,1) = aU2Y2v2(i*202+1,1);
% end
% 
% figure;  plot(U1);
% figure;  plot(U2);
% figure;  plot(Y1);
% figure;  plot(Y2);

figure;
stairs(Y2);title('Wartoœæ wyjœcia Y2');xlabel('k');ylabel('wartoœæ sygna³u');ylim([-5,20]);
legend('Sygna³ wyjœciowy','Wartoœæ zadana','Location','southeast');
matlab2tikz('Y2pp.tex' ,'showInfo',false);

figure;
stairs(U2);title('Wartoœæ wejœcia U2');xlabel('k');ylabel('wartoœæ sygna³u');ylim([-5,40]);
legend('Sygna³ steruj¹cy','Location','southeast');
matlab2tikz('U2pp.tex','showInfo',false);

