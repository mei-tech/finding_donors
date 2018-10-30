#!/bin/bash

# install default requirements
cd /home/tf/config
if [[ $(wc -l < "default_requirements.txt") -ge 0 ]]; then
  pip3 install -r default_requirements.txt
fi

# ipython notebooks config
# TODO

cd /notebooks
# install project requirements
if [[ $(wc -l < "requirements.txt") -ge 0 ]]; then
  pip3 install -r requirements.txt
fi

/run_jupyter.sh --allow-root
