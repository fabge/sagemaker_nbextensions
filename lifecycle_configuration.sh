#!/bin/bash

set -e

sudo -u ec2-user -i <<EOF

source /home/ec2-user/anaconda3/bin/activate /home/ec2-user/anaconda3/envs/JupyterSystemEnv

pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable collapsible_headings/main
jupyter nbextension enable toc2/main

source /home/ec2-user/anaconda3/bin/deactivate
