#!/bin/bash

## Clone repo

git clone https://github.com/pealock/gls-autoclicker.git && cd gls-autoclicker

## Set up python
python3 -m venv venv

## Activate venv
source venv/bin/activate

## Install pip packages
pip install -r requirements.txt

## Launch script
python3 gls_autoclicker.py
