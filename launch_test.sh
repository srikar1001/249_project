#!/bin/bash
cd catkin_ws
source ./devel/setup.bash

roslaunch zed_wrapper zed.launch svo_file:=~/recording1.svo & sleep 2 && rosrun detection detection_node.py -c ~/darknet/cfg/yolov3.cfg -w ~/yolov3.weights -m ~/darknet/cfg/coco.data -t 0.3 -s /home/srikar/recording1.svo & sleep 4 &&  roslaunch navigation_exp nav.launch && fg
