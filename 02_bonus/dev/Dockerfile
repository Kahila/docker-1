# Creating a docker image to setup the build environment
# tutorial from https://developer.cisco.com/docs/iox/#!tutorial-build-sample-docker-type-c-based-simple-app/overview

FROM devhub-docker.cisco.com/iox-docker/ir800/base-rootfs

COPY src /opt/src/
RUN opkg update
RUN opkg install iox-toolchain
RUN opkg install gdb

# build 
# docker build -t ir800-tools .