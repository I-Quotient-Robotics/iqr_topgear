# iqr_miivii_robot

## DEPEND
- [BUNKER ROS DRIVER](https://github.com/I-Quotient-Robotics/bunker_ros_driver)
- [SCOUT ROS DRIVER](https://github.com/I-Quotient-Robotics/scout_ros_driver)
- [IMU ROS DRIVER](https://github.com/I-Quotient-Robotics/hwt9053_ros_driver)
- [LIDAR ROS DRIVER](https://github.com/ouster-lidar/ouster_example)
- [GPS ROS DRIVER](https://github.com/QuartzYan/nmea_ros_driver)
- [DK ROS DRIVER](https://github.com/microsoft/Azure_Kinect_ROS_Driver)

## How to use
- compile & environment setup
  ```bash
  cd ~/catkin_ws
  catkin build
  source ~/catkin_ws/devel/setup.bash
  ```
- setup
  ```bash
  roscd iqr_topgear_bringup/script
  ./init_ptpd.bash  #run once after computer reboot
  ./setup_can0.bash #run once after computer reboot
  ```
- start robot and sensor 's ros driver
  ```bash
  roslaunch iqr_topgear_bringup bringup.launch #You can modify this file to activate different sensors.
  ```
  then, you can view all of the topic
  ```bash
  rostopic list
  ```
- visualization
  ```bash
  roslaunch iqr_topgear_description view_robot.launch
  ```
- mapping 
  ```bash
  roslaunch scout_navigation gmapping_demo.launch viz:=true #For scout robot
  ```
  **OR**
   ```bash
  roslaunch bunker_navigation gmapping_demo.launch viz:=true #For bunker robot
  ```
  
- save map
  ```bash
  roscd scout_navigation/maps #For scout robot
  rosrun map_serve map_save -f [map_name] 
  ```
  **OR**
  ```bash
  roscd bunker_navigation/maps #For bunker robot
  rosrun map_serve map_save -f [map_name] 
  ```
- navigation
  ```bash
  roslaunch scout_navigation amcl_demo.launch viz:=true map_name:=[map_name] #For scout robot
  ```
  **OR**
  ```bash
  roslaunch bunker_navigation amcl_demo.launch viz:=true map_name:=[map_name] #For bunker robot
  ```
