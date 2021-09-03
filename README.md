# ROS2 docker sandbox
A collection of ros2 based scripts and packages dockerized

## 1) Talker & Listener using standard ROS2 demos

- Launch the docker image with docker-compose. This will first build the required docker image from the file contained
  in the folder. This image contains some ros2 demos just to get started and see that everything is running. 

```bash
cd talker_listener_docker
docker-compose up --build
```
- If everything runs correctly, you should see in the terminal the output from the talker and listener nodes.

## 2) Talker & Listener by loading the ROS package inside the docker container
- The nodes in this container are actually the same that are included in the demo. However, the objective here is to learn
how to load your own custom ros package.
- To get started, launch the docker-compose file associated with this demo. Notice that for this demo, the vanilla official ros2:foxy
docker is used. The demos installation is not required, because we are loading our own, and we also don't require any additional packages.
  When the image is launched, a bash script will execute the python ros2 launch file and start the required nodes.
- There are two flavor for this example. In the first one, one docker container launches the talker and listener container. You will see
in the console output that both containers print there respective ROS_INFO messages.
  The second one launch two individual docker containers. One runs the talker node, while the other the listener node. Both nodes
  are able to communicate between the two containers.
  
```bash
cd roscpp_tutorials_with_docker
docker-compose -f docker-compose-talker-listener-one-container.yaml up --build
```

```bash
cd roscpp_tutorials_with_docker
docker-compose -f docker-compose-talker-listener-individual-containers.yaml up --build
```

## 3) Server & Client by loading the ROS package inside the docker container
- This example is similar to the previous one. Also, notice that the server and client nodes were also build previously using colcon, 
  but they just weren't launched from the script.
- To launch this demo, run the following commands, similarly to the previous example.

```bash
cd roscpp_tutorials_with_docker
docker-compose -f docker-compose-client-server.yaml up --build
```