#!/bin/bash
echo "starting static transforms"
source install/setup.bash
#x y z yaw pitch roll frame_id child_frame_id
ros2 run tf2_ros static_transform_publisher 0.07 0.05 -0.01 -1.57 0 -1.57 base_frame camera_optical_frame0 &
ros2 run tf2_ros static_transform_publisher 0.07 -0.05 -0.01 -1.57 0 -1.57 base_frame camera_optical_frame1 &
ros2 run tf2_ros static_transform_publisher -0.07 -0.08 0.01 0 -1.57 -1.57 base_frame imu
