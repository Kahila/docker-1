#!/bin/sh
cd dev
docker build -t ir800-tools .
docker run -v ${PWD}/apps:/opt/share -it ir800-tools /bin/sh
cd ..
docker build -t ir800-base-image .
cd -
docker run -it ir800-base-image /bin/sh