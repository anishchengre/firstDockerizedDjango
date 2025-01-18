#!/bin/bash

echo "Updating System Packages"
sudo apt-get update && sudo apt-get upgrade && sudo apt-get full-upgrade -y

PROJECT_DIR="/home/anishchengre/projects/backend/atmex"
cd $PROJECT_DIR


# create a virtual environment
if [ ! -d venv]