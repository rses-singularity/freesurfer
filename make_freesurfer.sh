#!/bin/bash
IMG_NAME="freesurfer.img"
DEF_NAME="Singularity"
SIZE=10000

sudo rm -rf $IMG_NAME
sudo singularity create -s $SIZE $IMG_NAME
sudo singularity bootstrap $IMG_NAME $DEF_NAME
