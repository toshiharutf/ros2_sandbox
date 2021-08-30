#!/usr/bin/env bash
xhost +local:docker

docker run -it --rm \
--gpus all \
--env="DISPLAY=$DISPLAY" \
--env="QT_X11_NO_MITSHM=1" \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--volume="/home/toshi/repos/github/ros2_sandbox/roscpp_tutorials_with_docker/ws_src:/dev_ws/src" \
--name ros2_cpp_examples_img \
 ros:foxy bash -c "bash /dev_ws/src/run_talker.sh"

xhost -local:docker

#--device="/dev/input/js0:/dev/input/js0"  \