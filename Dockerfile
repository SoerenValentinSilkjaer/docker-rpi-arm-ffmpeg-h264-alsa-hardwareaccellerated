FROM resin/rpi-raspbian:latest

MAINTAINER SoerenValentinSilkjaer <svseboks@gmail.com>

RUN apt-get update && apt-get install libasound2

COPY bin/. /bin/
COPY lib/. /lib/

RUN chmod +x /bin/aserver / \
&& chmod +x /bin/ffmpeg / \
&& chmod +x /bin/ffprobe / \
&& chmod +x /bin/ffserver / \
&& chmod +x /bin/x264 /
