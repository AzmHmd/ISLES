clear all
close all
clc

cd('/home/sapma3/Maryam/codes/ISLES_Azam/result/13/DWI_prediction')

brain_red = zeros(230,230,153);
brain_green = zeros(230,230,153);

for i = 1:153
    f_name = sprintf('%s',int2str(i),'.png');
    a = double(imread(f_name));
    
    a13 = a(:,:,1)-a(:,:,3);
    a23 = a(:,:,2)-a(:,:,3);
    
    b13 = zeros(size(a13));
    b13(a13~=0) = 1;
    
    b23 = zeros(size(a23));
    b23(a23~=0) = 1;
    
    BW13 = imfill(b13,'holes');
    BW23 = imfill(b23,'holes');
    
    brain_red(:,:,i) = BW13;
    brain_green(:,:,i) = BW23;
end

nii = make_nii(brain_red);
save_nii(nii, 'DWI_red.nii')

nii = make_nii(brain_green);
save_nii(nii, 'DWI_green.nii')
