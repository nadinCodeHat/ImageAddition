close all;
clear all;
m = 120;
n = 160;
im = zeros(m, n);
im = uint8(im);
a=50;
b=1;
for i=21:1:50
    for j=a-b:1:a+b
        im(i,j) = 200;
    end
    b=b+1;
end
imshow(im)
title('Created Image')

im2 = zeros(m, n);
im2 = uint8(im2);
a=50;
b=1;
for i=60:1:100
    for j=a-b:1:a+b
        im2(i,j) = 200;
    end
    b=b+1;
end
figure, imshow(im2)
title('Created Image2')

im3 = zeros(m, n);
im3 = uint8(im3);

for i=1:1:m
    for j=1:1:n
        im3(i,j) = min(im(i,j) +im2(i,j), 255);
    end
end

figure ,imshow(im3)
title('Output Image')