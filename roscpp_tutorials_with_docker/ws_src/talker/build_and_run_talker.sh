#!/usr/bin/env bash
set -e
source /opt/ros/$ROS_DISTRO/setup.bash
cd /dev_ws
rosdep install -i --from-path src --rosdistro $ROS_DISTRO -y
colcon build
source install/setup.bash
ros2 run talker_with_docker talker