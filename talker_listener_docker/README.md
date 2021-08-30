## Simple listener-talker examples using ROS2 in docker

1. Using docker-compose
This is the easiest way to build and create two containers, one running a talker node, while a second runs a listener node, subscribed to the topic from the talker.

To run:
```bash
cd talker_listener_docker
docker-compose up
```

2. Build and running two containers independently

First run:
```bash
cd talker_listener_docker
docker build -t ros2_docker_example .
docker run ros2_docker_example ros2 run demo_nodes_cpp talker
```

In a second console: 
```bash
docker run ros2_docker_example ros2 run demo_nodes_py listener
```

To stop the containers: 
```bash
docker container ps
```
Copy the containers IDs. Then
```bash
docker container rm <ID1> -f
docker container rm <ID2> -f
```
