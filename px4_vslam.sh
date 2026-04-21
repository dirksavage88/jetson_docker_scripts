#!/bin/bash
echo "Starting px4_vslam Node"
source install/setup.bash
ros2 launch px4_vslam vslam_realsense.launch.py
