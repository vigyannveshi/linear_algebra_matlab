%% visualising the plane spanned by two 3D vectors

% Two vectors to define a plane
v1=[4 -5 4]';
v2=[2 4 1]';

cp=  cross(v1,v2);
% Making cp an unit vector
cp=cp/norm(cp);

%draw the vectors
figure(4), clf
plot3([0 v1(1)],[0 v1(2)],[0 v1(3)],'k','linew',3)
hold on
plot3([0 v2(1)],[0 v2(2)],[0 v2(3)],'k','linew',3)
plot3([0 cp(1)],[0 cp(2)],[0 cp(3)],'r','linew',3)

% draw the plane spanned by the vectors
h=ezmesh(@(x,y)v1(1)*x+v2(1)*y,...
         @(x,y)v1(2)*x+v2(2)*y,...
         @(x,y)v1(3)*x+v2(3)*y,...
         [-1 1 -1 1 -1 1]);
     
set(h,'facecolor','g','cdata',ones(50),'linestyle','none')
xlabel('c_1'),ylabel('c_2'),zlabel('c_3')
axis square
title('')
grid on, rotate3d on