clear
clc
% % v = VideoReader('Parking space usage measurement system.mp4');
% sample = rgb2gray(read(v,995));
%fileID = fopen('specsheet.txt','w');

sample = rgb2gray(imread('parent.jpg'));
% info = imfinfo(sample);
% w = info.Width;
% h = info.Height;
% csvwrite('wid.dat',w);
% csvwrite('hei.dat',h);
% x = input('Enter Number of spaces ');
% csvwrite('spaces1.dat',x);
x=csvread('spaces1.dat');
for i = 1:x
imshow(sample);
h = imrect();
wait(h);
y = getPosition(h)
z = num2str(i);
str = ['specsheet' z '.dat'];
csvwrite(str,y);
end