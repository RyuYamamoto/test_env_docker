FROM osrf/ros:melodic-desktop-bionic

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y --no-install-recommends \
		vim tmux git python3-pip

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

WORKDIR /root
