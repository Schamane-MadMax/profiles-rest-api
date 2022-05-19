#!/bin/bash
#create a development environment in python
ENVPATH="/root/env"
apt install -y python3-pip virtualenv
python3 -m venv $ENVPATH
source $ENVPATH/bin/activate
