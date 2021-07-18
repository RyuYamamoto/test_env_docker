FROM nvidia/opengl:1.1-glvnd-devel-ubuntu16.04

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y --no-install-recommends \
		vim tmux git python3-pip lsb-release

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt install curl && \
		curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt-get update && apt-get install -y --no-install-recommends ros-kinetic-desktop-full
RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc && source ~/.bashrc
RUN apt install -y --no-install-recommends python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
RUN apt install -y --no-install-recommends python-rosdep
RUN rosdep init && \
	rosdep update

ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

WORKDIR /root
