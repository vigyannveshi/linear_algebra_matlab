%% Creating and visualizing Matrices

%  a small matrix
amat=[1 2 3; 4 5 6 ; 0 1 2; 4 1 9];

figure(3),clf
subplot(221)
imagesc(amat)
title('some matrix')
set(gca,'xtick',1:size(amat,2))
set(gca,'ytick',1:size(amat,1))

% identity ,matrix
imat = eye(10);
subplot(222)
imagesc(imat)
set(gca,'xtick',[],'ytick',[])
title('identity matrix')

% random matrix
rmat=randn(250,240);
subplot(223)
imagesc(rmat)
set(gca,'xtick',[],'ytick',[])
title('Random matrix')

% triangular matrix 
%tmat= triu(randn(100));
tmat= tril(randn(100)); 
subplot(224)
imagesc(tmat)
set(gca,'xtick',[],'ytick',[])
title('upper triangular matrix')


