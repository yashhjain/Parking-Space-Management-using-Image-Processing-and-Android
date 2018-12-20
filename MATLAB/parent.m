clear;
clc;
cam=webcam(2);
pause(3);
img=snapshot(cam);
imwrite(img,'parent.jpg');
imshow(imread('parent.jpg'))
clear cam;