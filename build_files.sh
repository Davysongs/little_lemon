#!/bin/bash

# Install Python
apt-get update
apt-get install -y python3 python3-pip

# Install dependencies
pip3 install -r requirements.txt
python3 manage.py migrate


# Build Django app or collect static files

python3 manage.py collectstatic --noinput
