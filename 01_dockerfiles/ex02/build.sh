#!/bin/sh

#building the rails image
cd ft-rails
docker build -t ft-rails:on-build .
cd ..
docker build -t ex02 .
docker run -it --rm -p 3000:3000 ex02

#app used is takeb from https://github.com/JetBrains/sample_rails_app
# git clone --recurse-submodules repo-link should be used to clone