I = imread('/media/gaurav/LocAL/SAMPLE/lena.jpg');
%imshow(I);
G= (.222*I(:,:,1))+(.707*I(:,:,2))+(.071*I(:,:,3));

%imshow(G);
g=G(:)';
y = zeros(1,256);
t=size(G);
max=t(1)*t(2);
for i=1:max
    y(g(i))=y(g(i))+1;
end;
stem(y);
figure;
imhist(G);