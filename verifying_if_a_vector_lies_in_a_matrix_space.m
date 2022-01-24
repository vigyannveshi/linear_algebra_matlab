%% Detecting the presence of a vector in the column space of a matrix

M=[4 5 6;
   0 1 4;
   4 1 0;
   3 3 9];

v1=[-4 3 7 2]';
v2=[-1 1 5 6]'; % M(:,1)*2 - M(:,2)*3+M(:,3)

rank(M)
rank([M v1])
rank([M v2])

rref([M v2])% reduces the matrix to row echelon form





