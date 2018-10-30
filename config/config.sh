#!/bin/bash

# install default requirements
cd /home/tf/config
if [[ $(wc -l < "default_requirements.txt") -ge 0 ]]; then
  pip3 install -r default_requirements.txt
fi

# jupyter notebooks config
## jupyter themes
pip3 install jupyterthemes
### select dark theme
jt -t chesterish
## extensions
pip3 install jupyter_contrib_nbextensions
# jupyter nbextension enable

## configurator
pip3 install jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

cd /notebooks
# install project requirements
if [[ $(wc -l < "requirements.txt") -ge 0 ]]; then
  pip3 install -r requirements.txt
fi

/run_jupyter.sh --allow-root
