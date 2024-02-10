#!/bin/bash

cd build && ./GA-LMS_bunny /home/openga/scripts/GAAFs_poseEstimation/Simulations/Bunny/targetkps.pcd /home/openga/scripts/GAAFs_poseEstimation/Simulations/Bunny/sourcekps.pcd /home/openga/scripts/GAAFs_poseEstimation/Simulations/Bunny/cleanedCorrs.txt /home/openga/scripts/GAAFs_poseEstimation/Simulations/Bunny/good_correspondences.txt 8 8 && pcl_viewer -fc 255,0,0 /home/openga/scripts/GAAFs_poseEstimation/Simulations/Bunny/targetkps.pcd -fc 0,0,255 /home/openga//scripts/GAAFs_poseEstimation/Simulations/Bunny/sourcekps.pcd &

cd build && pcl_viewer -fc 255,0,0 /home/openga/scripts/GAAFs_poseEstimation/Simulations/Bunny/targetkps.pcd -fc 0,255,0 sourcekps_reg.pcd & 
