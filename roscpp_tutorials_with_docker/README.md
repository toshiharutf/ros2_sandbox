## Simple listener-talker examples using ROS2 in docker

1. Using docker-compose
Docker-compose launch two containers, the talker and the listener.
   One container builds and run the talker, and the second the listener.
This is the easiest way to build and create two containers, one running a talker node, while a second runs a listener node, subscribed to the topic from the talker.

To execute the docker-compose file:
```bash
cd roscpp_tutorials_with_docker
docker-compose up --build
```