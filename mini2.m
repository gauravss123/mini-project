I = imread('/media/gaurav/LocAL/SAMPLE/lena.jpg');

imshow(I);
G= (.222*I(:,:,1))+(.707*I(:,:,2))+(.071*I(:,:,3));
H=G;

imshow(H);
g=G(:)';
y = zeros(1,256);
w = zeros(1,256);

t=size(G);
max=t(1)*t(2);
for i=1:max
   y(g(i))=y(g(i))+1;
end;
for i=1:max
   w=y/t;
end;

subplot(1,2,1)
stem(y);
subplot(1,2,2)
stem(w);
