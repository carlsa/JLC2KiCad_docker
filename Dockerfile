FROM python:3-alpine

WORKDIR /usr/src/app
ENTRYPOINT /bin/sh

RUN apk --no-cache add git

RUN git clone https://github.com/TousstNicolas/JLC2KiCad_lib.git
# Use this if you need a specific tag
#RUN cd JLC2KiCad_lib; git checkout 3920e1f
RUN pip install ./JLC2KiCad_lib 
RUN rm -rf ./JLC2KiCad_lib

