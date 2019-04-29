clear all
close all
clc

cd('/home/sapma3/Maryam/codes/ISLES2018/TRAINING/case_1/SMIR.Brain.XX.O.CT.345562')

CT = load_nii('SMIR.Brain.XX.O.CT.345562.nii');
CT_img = CT.img;
CT_img = double(CT_img);

CT_img(CT_img>300) = 300;

figure,colormap(gray),imagesc(CT_img(:,:,4))

cd('/home/sapma3/Maryam/codes/ISLES2018/TRAINING/case_1/SMIR.Brain.XX.O.CT_4DPWI.345561')

CT_4DPWI = load_nii('SMIR.Brain.XX.O.CT_4DPWI.345561.nii');
CT_4DPWI_img = CT_4DPWI.img;
CT_4DPWI_img = double(CT_4DPWI_img);

CT_4DPWI_img(CT_4DPWI_img>300) = 300;

figure,colormap(gray),imagesc(CT_4DPWI_img(:,:,4,20))

cd('/home/sapma3/Maryam/codes/ISLES2018/TRAINING/case_1/SMIR.Brain.XX.O.CT_CBF.345563')

CT_CBF = load_nii('SMIR.Brain.XX.O.CT_CBF.345563.nii');
CT_CBF_img = CT_CBF.img;
CT_CBF_img = double(CT_CBF_img);

% CT_CBF_img(CT_CBF_img>300) = 300;

figure,colormap(gray),imagesc(CT_CBF_img(:,:,4))

cd('/home/sapma3/Maryam/codes/ISLES2018/TRAINING/case_1/SMIR.Brain.XX.O.CT_CBV.345564')

CT_CBV = load_nii('SMIR.Brain.XX.O.CT_CBV.345564.nii');
CT_CBV_img = CT_CBV.img;
CT_CBV_img = double(CT_CBV_img);

% CT_CBV_img(CT_CBV_img>300) = 300;

figure,colormap(gray),imagesc(CT_CBV_img(:,:,4))

cd('/home/sapma3/Maryam/codes/ISLES2018/TRAINING/case_1/SMIR.Brain.XX.O.CT_MTT.345565')

CT_MTT = load_nii('SMIR.Brain.XX.O.CT_MTT.345565.nii');
CT_MTT_img = CT_MTT.img;
CT_MTT_img = double(CT_MTT_img);

% CT_MTT_img(CT_MTT_img>300) = 300;

figure,colormap(gray),imagesc(CT_MTT_img(:,:,4))

cd('/home/sapma3/Maryam/codes/ISLES2018/TRAINING/case_1/SMIR.Brain.XX.O.CT_Tmax.345567')

CT_Tmax = load_nii('SMIR.Brain.XX.O.CT_Tmax.345567.nii');
CT_Tmax_img = CT_Tmax.img;
CT_Tmax_img = double(CT_Tmax_img);

% CT_Tmax_img(CT_Tmax_img>300) = 300;

figure,colormap(gray),imagesc(CT_Tmax_img(:,:,4))

cd('/home/sapma3/Maryam/codes/ISLES2018/TRAINING/case_1/SMIR.Brain.XX.O.OT.345566')

OT = load_nii('SMIR.Brain.XX.O.OT.345566.nii');
OT_img = OT.img;
OT_img = double(OT_img);

% CT_Tmax_img(CT_Tmax_img>300) = 300;

figure,colormap(gray),imagesc(OT_img(:,:,4))
a = 3;
