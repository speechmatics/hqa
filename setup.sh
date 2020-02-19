#!/bin/bash -e

VENV=./venv_hqa

if [ ! -d $VENV ]; then
    echo "Creating $VENV"
    virtualenv -p python3.7 $VENV
fi

echo "Starting venv..."
source $VENV/bin/activate

echo "Installing requirements..."

pip3 install -r ./requirements.txt
