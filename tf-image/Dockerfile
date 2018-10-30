FROM tensorflow/tensorflow:latest-py3

RUN apt-get update && \
      apt-get -y dist-upgrade &&\
      # apt-get -y install --no-install-recommends \
      #   vim && \
      apt-get clean

RUN pip3 install --upgrade pip

# RUN pip install -r /path/to/requirements.txt

EXPOSE 8888
