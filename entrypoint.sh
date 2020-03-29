#!/bin/bash

eval "$(/opt/anaconda/bin/conda shell.bash hook)"

## create power user account

useradd $ADMUSER -m -d /home/jupyadm
echo -e "$ADMPASS\n$ADMPASS\n" | passwd jupyadm
echo "$ADMUSER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo power-user $ADMUSER passwd $ADMPASS

jupyterhub --port $HUBPORT -f /etc/jupyterhub/jupyterhub_config.py
