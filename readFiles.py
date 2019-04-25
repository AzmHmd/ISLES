# This code is to read raw nii files

import numpy as np
import glob
import nibabel as nib
from nilearn import image
from nilearn import plotting

path_to_read_files = '/Volumes/Seagate Backup Plus Drive/Azam/ISLES/2018/TRAINING/'
files = [f for f in glob.glob(path_to_read_files+'*/*/*.nii')]
for f in files:
    
    if f.find("4DPWI")==-1:  # to make sure it is 3D data
        print(f)
        CT_img = nib.load(f)
        print('image shape is : '+ str(CT_img.shape))
        #plotting.plot_stat_map(CT_img)
        plotting.plot_img(CT_img)
        print('---------------------------------------------------------------------------')
