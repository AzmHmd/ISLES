import numpy as np
import glob
import nibabel as nib
from nilearn import image
from nilearn import plotting
import matplotlib
%matplotlib inline

# read ISLES 2017 dataset: MRI images
path_to_read_files = '/Volumes/Seagate Backup Plus Drive/Azam/ISLES/2017/ISLES2017_Training/'
cases = [f for f in glob.glob(path_to_read_files+'*')]
for case in cases:
    print('*************  ' + case.split("/")[-1] + '  *****************')
    files = [f for f in glob.glob(case+'/*/*.nii')]
    for f in files:
        MRI_img = nib.load(f)
        print('image shape is : '+ str(MRI_img.shape))
        img_data = MRI_img.get_fdata()
        print('maximum value of image intensity is: '+ str(img_data.max()))
        print('type of data : ') 
        print(MRI_img.get_data_dtype())
        if len(MRI_img.shape) > 3:
            print('5D data!')
        else:
            plotting.plot_img(MRI_img, cmap='gray')
            plotting.show()
    print('---------------------------------------------------------------------------')
