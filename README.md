# ISLES ( Ischemic Stroke Lesion Segmentation )

# ISLES-2015:

*** Tasks:

SISS: sub-acute ischemic stroke lesion segmentation >> Automatic segmentation of ischemic stroke lesion volumes from multi-spectral MRI sequences acquired in the sub-acute stroke development stage.

SPES: acute stroke outcome/penumbra estimation >> Automatic segmentation of acute ischemic stroke lesion volumes from multi-spectral MRI sequences for stroke outcome prediction.

*** Dataset

The data for both sub-tasks, SISS and SPES, are pre-processed in a consistent manner to allow easy application of a method to both problems.

Image format: Uncompressed Neuroimaging Informatics Technology Initiative (NIfTI) format: *.nii.

(I/O libraries: MedPy (Python), NiftiLib (C,Java,Matlab,Python), Nibabel (Python), Tools for NIfTI and ANALYZE image (Matlab), ITK (C++))
Pre-processing

All MRI sequences are skull-stripped, re-sampled to an isotropic spacing of 13mm
(SISS) resp. 23mm (SPES) and co-registered to the FLAIR (SISS) and T1w contrast (SPES) sequences respectively.

*** Data details

SISS

number of cases:	28 training; 36 testing

number of centers:	1 (train), 2 (test)

number of expert segmentation for each case:	1 (train), 2 (test)

MRI sequences: 	FLAIR, T2w TSE,

T1w TFE/TSE, DWI

SPES

number of cases:	30 training
20 testing

number of centers:	1

number of expert segmentation for each case:	1

MRI sequences: 	T1c, T2, DWI, CBF, CBV, TTP, Tmax



