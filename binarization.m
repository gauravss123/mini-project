I = imread('/media/gaurav/LocAL/SAMPLE/lena.jpg');


G= (.222*I(:,:,1))+(.707*I(:,:,2))+(.071*I(:,:,3)); %convert to grayscale, adjust to human eye sensitivity

imshow(G);

g=G(:)'; %convert 2d grayscale matrix to 1d
%y;% = zeros(1,256); %1d array to store values of histogram
%w;% = zeros(1,256); %1d array to store values of normalised histogram

t=size(G); % returns dimension of grayscale image
max=t(1)*t(2); % no. of pixels in image
for i=1:max
   y(g(i)+1)=y(g(i)+1)+1; % calculate histogram, +1 on lhs to handle case when intensity value =0, rhs calculate frequency
end;
for i=1:max
   w=y/max; % to calculate normalised histogram
end;
stem(w); %histogram
title('s111111dkflksjdflksd');
q=0; r=0;   z=0; x=0;
for i=1:1:256
     for j=1:1:i
         q=q+w(j);
         z=z+(j*w(j));
     end
     z=z/q;
     for j=i+1:1:256
         r=r+w(j);
         x=x+(j*w(j));
     end
     x=x/r;
     v=(q(1-q))*((z-x));
     
end




%ToDo make zero for all values in G less than equal to 'k' and 1 greater than k

