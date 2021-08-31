## Simple listener-talker examples using ROS2 in docker

1. Using docker-compose with individual containers for each ros node
Docker-compose launch two containers, the talker and the listener.
   One container builds and run the talker, and the second the listener.
This is the easiest way to build and create two containers, one running a talker node, while a second runs a listener node, subscribed to the topic from the talker.

To execute the docker-compose file:
```bash
cd roscpp_tutorials_with_docker
docker-compose up --build
```

2. Using one container and ros launch
In this setup, one container will run the nodes, talker and listener. They both will be launched
   using ros launch.

cd roscpp_tutorials_with_docker
docker-compose -f docker-compose-launch.yaml up --build