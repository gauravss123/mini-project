I = imread('/media/gaurav/LocAL/SAMPLE/luna.jpg');

imshow(I);
G= (.222*I(:,:,1))+(.707*I(:,:,2))+(.071*I(:,:,3));
H=G;
figure;
imshow(H);
g=G(:)';
y = zeros(1,256);
t=size(G);
max=t(1)*t(2);
for i=1:max
   y(g(i)+1)=y(g(i)+1)+1;
end;
figure;
stem(y);