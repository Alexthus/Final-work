FROM osrf/ros:humble-desktop
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y \
xpra \
xterm \
net-tools \
netcat \
nano \
openssh-server \
rviz \
v4l-utils \
ros-humble-rmw-cyclonedds-cpp
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc \
&& echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc \
&& echo "export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp" >> ~/.bashrc \
&& echo "export TURTLEBOT3_MODEL=waffle" >> ~/.bashr
COPY driver_install.bash /home/test/
CMD ["bash"]
