# docker-rpi-arm-ffmpeg-h264-alsa
Docker repository:
https://hub.docker.com/r/sorenvalentin/rpi-arm-ffmpeg-h264-alsa-hardwareaccellerated/

FFMPEG for raspberry pi and ARM cpus. Build on Raspbian.

Supports video and audio.

Compiled using Praveen Potluru's guide, credits to him
http://praveen.life/2016/06/26/compile-ffmpeg-for-raspberry-pi-3/

Includes ffmpeg compiled with h264, libfdk-aac and alsa.

!!! h264_omx currently not working !!!

FFMPEG is configured with: ./configure --prefix=/home/pi/ffmpeg/dependencies/output
--enable-gpl \
--enable-libx264 \
--enable-nonfree \
--enable-libfdk_aac \
--enable-omx \
--enable-omx-rpi \
--extra-cflags="-I/home/pi/ffmpeg/dependencies/output/include" \
--extra-ldflags="-L/home/pi/ffmpeg/dependencies/output/lib" --extra-libs="-lx264 -lpthread -lm -ldl"

How to:
See docker repository:
https://hub.docker.com/r/sorenvalentin/rpi-arm-ffmpeg-h264-alsa/
