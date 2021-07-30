FROM osrf/ros:galactic-desktop

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y --no-install-recommends \
		vim tmux git python3-pip

RUN echo "source /opt/ros/galactic/setup.bash" >> ~/.bashrc

ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

WORKDIR /root
