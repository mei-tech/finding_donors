FROM tensorflow/tensorflow:latest

RUN apt-get update && \
      apt-get -y dist-upgrade &&\
      # apt-get -y install --no-install-recommends \
      #   vim && \
      apt-get clean

RUN pip install --upgrade pip

# RUN pip install -r /path/to/requirements.txt

EXPOSE 8888
