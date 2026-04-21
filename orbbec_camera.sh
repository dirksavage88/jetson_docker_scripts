#!/bin/bash
echo "Starting ros2 orbbec cam driver"
source install/setup.bash
ros2 launch orbbec_camera gemini2L.launch.py & 
