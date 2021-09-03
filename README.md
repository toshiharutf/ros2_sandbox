# ROS2 docker sandbox
A collection of ros2 based scripts and packages dockerized

## Samples
### 1) Talker & Listener using standard ROS2 demos

- Launch the docker image with docker-compose. This will first build the required docker image from the file contained
  in the folder. This image contains some ros2 demos just to get started and see that everything is running. 

```bash
cd talker_listener_docker
docker-compose up --build
```

### 2) Talker & Listener by loading the ROS package inside the docker container
- The nodes in this container are actually the same that are included in the demo. However, the objective here is to learn
how to load your own custom ros package.
- To get started, launch the docker-compose file associated with this demo. Notice that for this demo, the vanilla official ros2:foxy
docker is used. The demos installation is not required, because we are loading our own, and we also don't require any additional packages.
  When the image is launched, a bash script will execute the python ros2 launch file and start the required nodes. 
  
```bash
cd roscpp_tutorials_with_docker
docker-compose -f docker-compose-talker-listener.yaml up --build
```

### 3) Server & Client by loading the ROS package inside the docker container
- This example is similar to the previous one. Also, notice that the server and client nodes were also previously. They just
weren't launched from the script.
- To launch this demo, run the following commands, similarly to the previous example.

```bash
cd roscpp_tutorials_with_docker
docker-compose -f docker-compose-client-server.yaml up --build
```