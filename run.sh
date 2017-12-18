#!/usr/bin/env bash

conda install -y tqdm
wget http://kitti.is.tue.mpg.de/kitti/data_road.zip -O /data/data_road.zip
unzip data/data_road.zip
nohup python main.py > "run_$(date +"%Y_%m_%d_%I_%M_%p").log" 2>&1&
