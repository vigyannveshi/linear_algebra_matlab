%% creating and plotting vectors in 2d

v1=[1 3];
s=-5.2;
figure(1),clf

%plot vector
plot([0 v1(1)],[0 v1(2)],'k','linew',3)
hold on % put this one later
plot([0 v1(1)*s],[0 v1(2)*s],'r--','linew',3);

% set square axes
axlim = max([norm(v1) norm(v1*s) ]);
set(gca,'xlim',[-1,1]*axlim,'ylim',[-1,1]*axlim)
grid on
axis square

%plot 0-lines

%hold on  %use of hold on again is reduntant here, as it is already turned
%on the top and not turned off
clear h
h(1)=plot(get(gca,'xlim'),[0,0],'k--');
h(2)=plot([0,0],(get(gca,'ylim')),'k--');
set(h,'color',[1,1,1]*0.3);
