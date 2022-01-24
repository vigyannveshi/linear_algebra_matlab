%% Matrix Inverse and Pseudo inverse

% A full - rank matrix is invertible

A=[1 2 3;
   0 4 6;
   4 4 1];

Ainv=inv(A);

figure(5),clf
subplot(231), imagesc(A) , axis square, title('A')
subplot(232), imagesc(Ainv),axis square, title('A^{-1}')
subplot(233), imagesc(A*(Ainv)), axis square, title('A*(A^{-1})')

% A reduced rank matrix isn't..
P=[1 2 3;
   0 4 6;
   1 6 9];

%--> wont exist: Pinv=inv(P);

%... but it has a pseudoinverse
Ppinv= pinv(P);
% Pinv= ((P'*P)^-1)*P'. For a non singular matrix pinv(A)=inv(A);

subplot(234),imagesc(P) ,axis square, title('P')
subplot(235),imagesc(Ppinv), axis square, title('P^{-1}')
subplot(236), imagesc(P*(Ppinv)),axis square, title('P*(P^{-1})')