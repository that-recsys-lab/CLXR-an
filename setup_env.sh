#!/bin/bash

# Define environment name
ENV_NAME="CLXR"

# Create virtual environment
python3 -m venv $ENV_NAME

# Activate virtual environment
source $ENV_NAME/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install required packages
if [ -f Requirements.txt ]; then
    pip install -r requirements.txt
else
    echo "Requirements.txt not found! Please create one with necessary dependencies."
fi

echo "Setup complete. To activate the environment, run:"
echo "source $ENV_NAME/bin/activate"
