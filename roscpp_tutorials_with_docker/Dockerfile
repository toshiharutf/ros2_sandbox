FROM ros:foxy

# Update ros2 GPG key
RUN apt-get update
RUN rm -rf /var/lib/apt/lists/*

RUN printenv | grep -i ROS

# CMD ["ros2", "run", "roscpp_tutorials", "talker"]
ENTRYPOINT ["./ros_entrypoint.sh"]
