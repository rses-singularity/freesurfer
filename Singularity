Bootstrap: docker
From: bids/freesurfer:latest

%setup
	#Runs on host
	#The path to the image is $SINGULARITY_ROOTFS



%post
	#Post setup script

	#Use bash as default shell
	echo "\n #Using bash as default shell \n" >> /environment
	echo 'SHELL=/bin/bash' >> /environment

	#Make environment file executable
	chmod +x /environment

	#Default mount paths
	mkdir /scratch /data /shared /fastdata

	#Nvidia Library mount paths
	mkdir /nvlib /nvbin

  echo 'export PATH="/opt/freesurfer/bin:/opt/freesurfer/fsfast/bin:/opt/freesurfer/tktools:/opt/freesurfer/mni/bin:$PATH"' >> /environment
  echo 'export FREESURFER_HOME="/opt/freesurfer"' >> /environment
  echo 'export PATH="/opt/freesurfer/mni/bin:$PATH"' >> /environment
  echo 'export PERL5LIB=/opt/freesurfer/mni/lib/perl5/5.8.5' >> /environment
  echo 'export FSLMULTIFILEQUIT=TRUE' >> /environment
  echo 'export POSSUMDIR=/usr/share/fsl/5.0' >> /environment
  echo 'export LOCAL_DIR=/opt/freesurfer/local' >> /environment
  echo 'export LD_LIBRARY_PATH=/usr/lib/fsl/5.0:' >> /environment
  echo 'export FSFAST_HOME=/opt/freesurfer/fsfast' >> /environment
  echo 'export MNI_PERL5LIB=/opt/freesurfer/mni/lib/perl5/5.8.5' >> /environment
  echo 'export FMRI_ANALYSIS_DIR=/opt/freesurfer/fsfast' >> /environment
  echo 'export FSF_OUTPUT_FORMAT=nii.gz' >> /environment
  echo 'export MINC_BIN_DIR=/opt/freesurfer/mni/bin' >> /environment
  echo 'export FSLTCLSH=/usr/bin/tclsh' >> /environment
  echo 'export MINC_LIB_DIR=/opt/freesurfer/mni/lib' >> /environment
  echo 'export FSLWISH=/usr/bin/wish' >> /environment
  echo 'export SHLVL=1' >> /environment
  echo 'export MNI_DIR=/opt/freesurfer/mni' >> /environment
  echo 'export FREESURFER_HOME=/opt/freesurfer' >> /environment
  echo 'export FSLDIR=/usr/share/fsl/5.0' >> /environment
  echo 'export MNI_DATAPATH=/opt/freesurfer/mni/data' >> /environment
  echo 'export FSLOUTPUTTYPE=NIFTI_GZ' >> /environment

%runscript
	#Executes with the singularity run command
	#delete this section to use existing docker ENTRYPOINT command


%test
	#Test that script is a success
