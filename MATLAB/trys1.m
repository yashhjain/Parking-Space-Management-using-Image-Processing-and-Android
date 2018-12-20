clear
clc
sample = (imread('park1.jpg'));
compimg = (imread('park5.jpg'));

sample = rgb2gray(sample);
compimg = rgb2gray(compimg);

B = edge(sample,'zerocross');
C = edge(compimg,'zerocross');
F=C-B;

imshow(compimg);
string={};
fileID = fopen('myfile1.txt','w');
x = csvread('spaces1.dat');
for i = 1:x
z = num2str(i);
str = ['specsheet' z '.dat'];
mat = csvread(str);
% ycord = mat(1,:);
% xcord = mat(2,:);
% xMax = max(xcord);
% yMax = max(ycord);
% xMin = min(xcord);
% yMin = min(ycord);
% det = [xMin yMin abs(xMax-xMin+1) abs(yMax-yMin+1)] ;
%meangraylevel = mean2(imcrop(F,mat))
meangraylevel = std2(F(mat(2):mat(2)+mat(4),mat(1):mat(1)+mat(3)))
if(meangraylevel>0.2)
    string = [string  {'1'}];
            %fprintf(fileID,'%d\n',1);
else
    string = [string {'0'}];
    %fprintf(fileID,'%d\n',0);
end
%subplot(9,1,i);
%figure(i);
%imshow(imcrop(compimg,mat));
%imshow(F(mat(2)+1:mat(2)+mat(4)+1,mat(1)+1:mat(1)+mat(3)+1));
end
%fileID = fopen('myfile.txt','w');
string = strjoin(string,'')

response = webwrite('http://smartpark.16mb.com/dbcon.php','string',string)