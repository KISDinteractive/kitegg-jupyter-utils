#!/bin/bash

# This script resets the /home/jovyan/ folder and deletes ALL files. As this is the only persistent folder in the KITeGG JupyterLabs Instance, it is like resetting the instance to its original state

read -p "Are you sure to delete ALL files and reset the server? Enter Y " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -rfv /home/jovyan/{*,.*}
fi
