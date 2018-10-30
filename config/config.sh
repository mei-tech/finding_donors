#!/bin/bash

# install default requirements
cd /home/tf/config
if [[ $(wc -l < "default_requirements.txt") -ge 0 ]]; then
  pip install -r default_requirements.txt
fi

# jupyter notebooks config
## jupyter themes
pip install jupyterthemes
### select dark theme
jt -t chesterish
## extensions
pip install jupyter_contrib_nbextensions
# jupyter nbextension enable

## configurator
pip install jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

cd /notebooks
# install project requirements
if [[ $(wc -l < "requirements.txt") -ge 0 ]]; then
  pip install -r requirements.txt
fi

/run_jupyter.sh --allow-root
