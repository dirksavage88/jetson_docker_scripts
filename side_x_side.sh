#!/bin/bash
echo "Starting side-by-side stereo splitter"
source install/setup.bash
ros2 run side_x_side_stereo side_x_side_stereo_node --ros-args -p input_image_topic:=/image_mono -p image_encoding:=mono8 -p right_cam_calibration_file:=file:///workspaces/isaac_ros-dev/side_x_side_stereo/config/right.yaml -p left_cam_calibration_file:=file:///workspaces/isaac_ros-dev/side_x_side_stereo/config/left.yaml -p left_frame_id:=camera_optical_frame0 -p right_frame_id:=camera_optical_frame1

