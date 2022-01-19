sudo apt update
sudo apt install -y ros-galactic-desktop
echo 'source /opt/ros/galactic/setup.bash' >> ~/.bashrc
sudo apt install -y python3-colcon-common-extensions

sudo apt install -y python3-rosdep
sudo rosdep init
rosdep update
