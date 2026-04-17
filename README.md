# jetson_orin_nano_2204_docker_scripts
Bring up ROS 2 and docker on the Jetson Orin Nano/NX

This repo is assuming you are using a recent version of Jetpack (requires Jetpack v6.2, will not work on v6.0) on the Jetson Orin Nano or Jetson Orin NX

If you have not installed/configured the Nvidia Contaainer Toolkit AND Isaac ROS Common **->>>** **STOP** **>>>** **these install scripts will not work until you have successfully installed the Nvidia Container Toolkit and ran the 'run_dev.sh' script in Isaac ROS Common:** [https://github.com/dirksavage88/isaac_ros_common](https://github.com/NVIDIA-ISAAC-ROS/isaac_ros_common/tree/release-3.2)

Step 1) Clone the repo into your home directory.

Step 2) Copy all install scripts into ~/workspaces/isaac_ros-dev. You should already have this folder if you have followed the Issac ROS common repo instructions.

Step 3) change directories to ~/workspaces/isaac_ros-dev and run the command 'sudo chmod +rwx *.sh'

Step 4) run the vcs tool python commands to pull in the repos from the .repo file, this takes a while to download.

Step 5) Ensure you have the isaac ros docker image listed by running 'docker image ls'

Step 6) run the command './ros-nodes_entrypoint.sh'*

Step 7) Confirm the running container 'docker ps'

Step 8) Confirm all topics are publishing via ROS 2 on a workstation using command line, Rviz2, or Foxglove studio


_You may need to substitute your own ROS 2 camera driver if  you are not using a usb single image stereo camera output (libuvc based) and using MIPI cameras instead. Also the stereo splitter node (side_x_side) is only for cameras that output a single output image that needs to be split._

Ensure to calibrate your camera and place the calibration files (*.yaml) in the config directory before running

