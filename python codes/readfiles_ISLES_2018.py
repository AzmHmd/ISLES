# This code is to read raw nii files

import numpy as np
import glob
import nibabel as nib
from nilearn import image, plotting
import matplotlib
%matplotlib inline

path_to_read_files = '/Volumes/Seagate Backup Plus Drive/Azam/ISLES/2018/TRAINING/'
cases = [f for f in glob.glob(path_to_read_files+'*')]
for case in cases:
    
    print('*************  ' + case.split("/")[-1] + '  *****************')
    files = [f for f in glob.glob(case+'/*/*.nii')]
    for f in files:
        if f.find("4DPWI")==-1:
            CT_img = nib.load(f)
            print('image shape is : '+ str(CT_img.shape))
            img_data = CT_img.get_fdata()
            print('maximum value of image intensity is: '+ str(img_data.max()))
            print('type of data : ') 
            print(CT_img.get_data_dtype())

            plotting.plot_img(CT_img)
            plotting.show()
    print('---------------------------------------------------------------------------')
