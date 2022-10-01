FROM python:3

WORKDIR /usr/src/app
ENTRYPOINT /bin/bash

RUN apt -y update
RUN apt install git -y

RUN git clone https://github.com/TousstNicolas/JLC2KiCad_lib.git
RUN pip install ./JLC2KiCad_lib 
RUN rm -rf ./JLC2KiCad_lib 
