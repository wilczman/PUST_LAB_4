U1=table2array(PIDIOnterupts(:,5));
U2=table2array(PIDIOnterupts(:,6));
U3=table2array(PIDIOnterupts(:,7));
Y1=table2array(PIDIOnterupts(:,8));
Y2=table2array(PIDIOnterupts(:,9));
Y3=table2array(PIDIOnterupts(:,10));
Yzad1=table2array(PIDIOnterupts(:,11));
Yzad2=table2array(PIDIOnterupts(:,12));
Yzad3=table2array(PIDIOnterupts(:,13));

i=0;
len=length(U1);
coktora=20;
while i< len/coktora     
    U1(i+1,1) = U1(i*coktora+1,1);
    U2(i+1,1) = U2(i*coktora+1,1);
    U3(i+1,1) = U3(i*coktora+1,1);
    Y1(i+1,1) = Y1(i*coktora+1,1);
    Y2(i+1,1) = Y2(i*coktora+1,1);
    Y3(i+1,1) = Y3(i*coktora+1,1);
    Yzad1(i+1,1) = Yzad1(i*coktora+1,1);
    Yzad2(i+1,1) = Yzad2(i*coktora+1,1);
    Yzad3(i+1,1) = Yzad3(i*coktora+1,1);
    i=i+1;
end

% U1=U1(1:len/coktora);
% U2=U2(1:len/coktora);
% U3=U3(1:len/coktora);
% Y1=Y1(1:len/coktora);
% Y2=Y2(1:len/coktora);
% Y3=Y3(1:len/coktora);
% Yzad1=Yzad1(1:len/coktora);
% Yzad2=Yzad2(1:len/coktora);
% Yzad3=Yzad3(1:len/coktora);
% 
% Yzad2(21:len/coktora)=10;
% Yzad2(183:len/coktora)=12;
% Yzad2(271:len/coktora)=10;
% Yzad2(361:len/coktora)=19;
% Yzad2(451:len/coktora)=13;
% Yzad2(541:len/coktora)=10;
% 
% Yzad3(31:len/coktora)=10;
% Yzad3(185:len/coktora)=15;
% Yzad3(271:len/coktora)=8;
% Yzad3(372:len/coktora)=19;
% Yzad3(451:len/coktora)=12;
% Yzad3(544:len/coktora)=10;
 
plot(U1);ylim([-5,20]);w = waitforbuttonpress;
plot(U2);w = waitforbuttonpress;
plot(U3);w = waitforbuttonpress;
plot(Y1);hold on;ylim([-5,20]); plot(Yzad1);w = waitforbuttonpress;hold off;
plot(Y2);hold on;ylim([-5,20]); plot(Yzad2);w = waitforbuttonpress;hold off;
plot(Y3);hold on;ylim([-5,20]); plot(Yzad3);w = waitforbuttonpress;hold off;

% figure;
% stairs(Y3);title('Wartoœæ wyjœcia Y3');xlabel('k');ylabel('wartoœæ sygna³u');ylim([-5,20]);
% hold on; stairs(Yzad3);
% legend('Sygna³ wyjœciowy','Wartoœæ zadana','Location','southeast');
% matlab2tikz('Y3_PID_interrupts.tex' ,'showInfo',false);
% 
% figure;
% stairs(U3);title('Wartoœæ wejœcia U3');xlabel('k');ylabel('wartoœæ sygna³u');ylim([-1.5,1.5]);
% legend('Sygna³ steruj¹cy','Location','southeast');
% matlab2tikz('U3_PID_interrupts.tex','showInfo',false);


