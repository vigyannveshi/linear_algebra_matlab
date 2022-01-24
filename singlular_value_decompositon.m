%% Singlular value decomposition// 
%--> Application of Data Compression--> Image Compression

clear,clc;
ein=imread('image_s_v_d.jpg');
imshow(ein);

einflat=mean(ein,3);

% SVD of image 
[U,S,V]=svd(einflat);
figure(8),clf

for i=1:16
    %low rank approximation
    lowapp=U(:,1:i)*S(1:i,1:i)*V(:,1:i)';
    
    subplot(4,4,i);
    imagesc(lowapp),axis off, axis image
    title(['Rank-' num2str(rank(lowapp)) 'approx']);
end
colormap gray




