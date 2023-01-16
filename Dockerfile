FROM nvidia/cuda:11.3.1-devel-ubuntu18.04

ADD . .

RUN apt-get update && apt-get install -y python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt --extra-index-url https://download.pytorch.org/whl/cu113

RUN cd utils/nms_rotated && python3 setup.py develop
