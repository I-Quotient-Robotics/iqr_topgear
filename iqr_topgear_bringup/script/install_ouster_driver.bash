
sudo apt install build-essential cmake libglfw3-dev libglew-dev libeigen3-dev libjsoncpp-dev libtclap-dev

mkdir -p ~/ouster_ws/

cd ~/ouster_ws/

git clone https://github.com/ouster-lidar/ouster_example.git

cd ./ouster_example

mkdir build

cd build

cmake -DCMAKE_BUILD_TYPE=Release ../

make

sudo make install

source /opt/ros/noetic/setup.bash

cd ~/catkin_ws

rosdep install --from-paths ~/ouster_ws/ouster_example

ln -s ~/ouster_ws/ouster_example ./src/

catkin build -DCMAKE_BUILD_TYPE=Release

