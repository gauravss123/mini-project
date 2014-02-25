I = imread('/media/gaurav/LocAL/SAMPLE/luna.jpg');
%imshow(I);

G= (.222*I(:,:,1))+(.707*I(:,:,2))+(.071*I(:,:,3)); %convert to grayscale, adjust to human eye sensitivity
figure;
imshow(G);

g=G(:)'; %convert 2d grayscale matrix to 1d
y = zeros(1,256); %1d array to store values of histogram
w = zeros(1,256); %1d array to store values of normalised histogram

t=size(G); % returns dimension of grayscale image
max=t(1)*t(2); % no. of pixels in image
for i=1:max
   y(g(i)+1)=y(g(i)+1)+1; % calculate histogram, +1 on lhs to handle case when intensity value =0, rhs calculate frequency
end;
for i=1:max
   w=y/max; % to calculate normalised histogram
end;
%for i=1:max
   %wg(g(i)+1)=wg(g(i)+1)+1;
%end;
wg = 0;
for i=1:256
    wg=(i*w(i)); % calculate mg
end;
%subplot(1,2,1)

%stem(y);
%subplot(1,2,2)
%stem(w);
