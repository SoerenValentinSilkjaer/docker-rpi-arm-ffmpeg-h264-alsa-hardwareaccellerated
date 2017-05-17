FROM resin/rpi-raspbian:latest

MAINTAINER SoerenValentinSilkjaer <svseboks@gmail.com>

RUN apt-get update
RUN apt-get install libasound2

COPY bin/. /bin/
COPY lib/. /lib/

RUN chmod +x /bin/aserver /
RUN chmod +x /bin/ffmpeg /
RUN chmod +x /bin/ffprobe /
RUN chmod +x /bin/ffserver /
RUN chmod +x /bin/x264 /
