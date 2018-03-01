I = zeros(1024,1024);

center = [512, 512];
temp = drawEllipse(I, 128, 256, center);

temp = drawEllipse(temp, 128, 128, [256, 256]);
temp = drawEllipse(temp, 128, 128, [256, 768]);
temp = drawEllipse(temp, 128, 128, [768, 768]);
temp = drawEllipse(temp, 128, 128, [768, 256]);
imshow(temp);
imwrite(temp, './resources/surround_ellipse_circle.jpg');


temp = imread('./resources/box_squares.jpg');

temp = drawEllipse(temp, 128, 128, [512-32, 512]);
% temp = drawEllipse(temp, 128, 128, [256, 768]);
% temp = drawEllipse(temp, 128, 128, [768, 768]);
% temp = drawEllipse(temp, 128, 128, [768, 256]);
imshow(temp);
imwrite(temp, './resources/center_black_circle.jpg');