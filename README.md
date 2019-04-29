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

---------------------------------------------------------------------------------------------------------------------------
# ISLES-2016:

*** Tasks: ISLES 2016 provides a segmentation and a regression task:

Task I: Lesion outcome prediction

Task II: Clinical outcome prediction

*** Data

Image format: Uncompressed Neuroimaging Informatics Technology Initiative (NIfTI) format: *.nii.

(I/O libraries: MedPy (Python), NiftiLib (C,Java,Matlab,Python), Nibabel (Python), Tools for NIfTI and ANALYZE image (Matlab), ITK (C++))
Pre-processing

All MRI sequences are skull-stripped and anonymization was performed. No other pre-processing, such as re-sampling or co-registration is performed. This allows each participant to employ their favorite algorithms. For the skull stripping of the structural images the stripTs tool was utilized. For the PWI images, a brain mask was created with the BET algorithm from FSL and the resulting mask was applied to the corresponding PWI image with the fslmath tool from FSL. Varying hand crafted parameters were chosen for the BET algorithm, depending on the respective MRI sequence. The decision of using two different algorithms for the skull stripping rests upon qualitative assessment.

The data is provided in two variants: A version with all sequences co-registered and skull-stripped with a common brain mask; and a version without co-registration and with individual skull-stripping performed. This enabled the participants to apply their favorite registration method, if desired.

*** Data details

For ISLES 2016, 35 training and roughly 40 testing cases has been made public. 

-------------------------------------------------------------------------------------------------------------------------
# ISLES-2017:

*** Tasks:

***Data
**IMAGE FORMAT & PRE-PROCESSING
Images will be available in uncompressed Neuroimaging Informatics Technology Initiative (NIfTI) format: *.nii. All MRI sequences have been skull stripped, anonymized and co-registered for each subject individually. No further pre-processing took place, allowing participants to apply their optimised processing pipelines.

**ACUTE IMAGING DATA DETAILS
Training data set consists of 43 patients. Developed techniques will be evaluated by means of a testing set including 32 stroke cases. Acquired MRI sequences are described in detail below.

**DIFFUSION MAPS (DWI, ADC)
Under-perfused brain tissue can be recognised as hyper-intense regions of the DWI trace images (DWI maps). Contrary the apparent diffusion coefficient (ADC) maps show these regions as dark areas. In comparison, ADC maps do not suffer from confounding T2 shine-through effects as observed on DWI maps.

**PERFUSION MAPS (CBV, CBF, MTT, TTP, Tmax)
To assess cerebral perfusion a contrast agent (CA) is administered to the patient and its temporal change is captured in dynamic susceptibility scans. Subsequently, perfusion maps are derived from these raw data for clinical interpretation of perfusion of blood within the brain tissue. Different maps aim to yield different information of perfusion, most commonly calculated maps are: The cerebral blood volume (CBV), cerebral blood flow (CBF) and mean transit time (MTT), defined as the ratio of volume to flow of cerebral blood (CBV/CBF). Furthermore, the time to peak concentration of the CA (TTP) and the time need at which the (deconvolved) residue function reaches its maximum value (Tmax).

For ISLES 2017, those maps were computed by means of Olea Sphere's block decomposition.

**FOLLOW-UP STROKE IMAGING
To assess the final lesion outcome, an anatomical sequence (T2w or FLAIR) was acquired when the stroke lesion had stabilised. Provided ground-truth segmentation maps were manually drawn on those scans.

---------------------------------------------------------------------------------------------------------------------

