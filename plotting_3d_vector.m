%%Creating and plotting vectors in 3D

v3a=[1,3,-4];
v3b=round(randn(1,3)*5);% floor() or ceil() could be used in place of round.

figure(2),clf

%plot vector 

plot3([0 v3a(1)],[0 v3a(2)],[0 v3a(3)],'k','linew',3);
hold on
plot3([0 v3b(1)],[0 v3b(2)],[0 v3b(3)],'r','linew',3);

%set square axes

axlims=max([norm(v3a) norm(v3b)]);
set(gca,'xlim',[-1 1]*axlims,'ylim',[-1 1]*axlims,'zlim',[-1 1]*axlims)
grid on
axis square

%plot 0-lines
h1=plot3(get(gca,'xlim'),[0 0],[0,0],'r--');
h2=plot3([0 0],get(gca,'ylim'),[0 0],'b--');
h3=plot3([0 0],[0 0],get(gca,'zlim'),'g--');
set([h1 h2 h3],'color',[1 1 1]*0.3);
rotate3d on

%axis labels
xlabel('x'),ylabel('y'),zlabel('z');



