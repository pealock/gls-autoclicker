#!/bin/bash

# Define the path to your virtual environment
VENV_PATH="./venv" 

# Create venv
python3 -m venv venv

# Activate the virtual environment
source "$VENV_PATH/bin/activate"

# Check if activation was successful (optional)
if [ $? -eq 0 ]; then
    echo "Virtual environment activated successfully."
else
    echo "Failed to activate virtual environment."
    exit 1
fi

# Install pip requirements
pip install -r requirements.txt

# Run your Python script (or any other command)
python3 "./gls_autoclicker.py"

# Deactivate the virtual environment (optional, but good practice)
deactivate
