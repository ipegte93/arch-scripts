#!/bin/bash

while :
do
    python3 start.py $(cat token)
    git pull
done