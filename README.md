# docker-rpi-arm-ffmpeg-h264-hardwareaccellerated-alsalatest-ffmpeg
FFMPEG for raspberry pi and ARM cpus. Build on Raspbian.

Supports video and audio.

Compiled using Praveen Potluru's guide, credits to him
http://praveen.life/2016/06/26/compile-ffmpeg-for-raspberry-pi-3/

Includes ffmpeg compiled with h264, libfdk-aac, alsa and hardware accelerated h264 (aka h264_omx)

FFMPEG is configured with:
./configure --prefix=/home/pi/ffmpeg/dependencies/output
--enable-gpl --enable-libx264 --enable-nonfree --enable-libfdk_aac
--enable-omx --enable-omx-rpi
--extra-cflags="-I/home/pi/ffmpeg/dependencies/output/include"
--extra-ldflags="-L/home/pi/ffmpeg/dependencies/output/lib"
--extra-libs="-lx264 -lpthread -lm -ldl"

How to:
Insert ffmpeg script as a parameter after the docker image name.

RTMP Example with h264 input and an alsa input
docker run -d --name ffmpegcontainer --privileged docker-rpi-arm-ffmpeg-h264-hardwareaccellerated-alsa ffmpeg -f video4linux2 -pix_fmt h264 -input_format h264 -video_size 1920x1080 -i /dev/video0 -f alsa -ac 2 -ar 44100 -i hw:1,0 -vcodec copy -acodec libfdk_aac -f flv <RTMP URL>

Instead of using hardware tags like hw:1,0 for sound devices, i recommend finding the card name. You can find it with "$ arecord -L"

Example with a logitech C920 webcam and a behringer UCA202 usb sound card. 30 fps, 1080P:
docker run -d --name ffmpegcontainer --privileged docker-rpi-arm-ffmpeg-h264-hardwareaccellerated-alsa ffmpeg -f video4linux2 -pix_fmt h264 -input_format h264 -video_size 1920x1080 -i /dev/video0 -f alsa -ac 2 -ar 44100 -i sysdefault:CARD=CODEC -vcodec copy -acodec libfdk_aac -f flv <RTMP URL>

