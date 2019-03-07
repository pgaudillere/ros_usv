FROM osrf/ros:melodic-desktop-full-bionic
RUN apt-get -y install libopenscenegraph-dev ros-melodic-navigation
RUN useradd --create-home -s /bin/bash user
WORKDIR /home/user
USER user

