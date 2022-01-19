apt-cache policy | grep universe
# Expected Output:
#  500 http://us.archive.ubuntu.com/ubuntu focal/universe amd64 Packages
#      release v=20.04,o=Ubuntu,a=focal,n=focal,l=Ubuntu,c=universe,b=amd64
# Uncomment the below 2 lines if the output does not match above
# sudo apt install software-properties-common
# sudo add-apt-repository universe
sudo apt update && sudo apt install -y curl gnupg lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
# Does not work in shell script, run next line independently
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update
sudo apt install -y ros-galactic-desktop
echo 'source /opt/ros/galactic/setup.bash' >> ~/.bashrc
sudo apt install -y python3-colcon-common-extensions

sudo apt install -y python3-rosdep
sudo rosdep init
rosdep update
