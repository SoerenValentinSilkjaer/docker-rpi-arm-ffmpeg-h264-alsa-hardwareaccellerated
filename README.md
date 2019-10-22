# Docker for rpi 3b webcam rtsp stream

  use ffmpeg && ffserver

# How to turn rpi 3b to rtsp server
   
   1. Need a webcam(Logitech C270)
   2. Install docker-ce
   3. Install docker-compose
   4. Install git

# Just do it
  
   $cd /home/pi 
   $git clone https://github.com/sndnvaps/rpi-ffmpeg-rtsp-server.git
   $cd rpi-ffmpeg-rtsp-server
   $docker-compose -f docker-compose.armhf.yaml up -d
   
# Receive rpi 3b rtsp stream from the network and save with ffmpeg

  $ffmpeg -y -i rtsp://192.168.13.173:8554/live1.mpeg -vcodec copy -f mp4 2019.10.22-11.45.mp4
  192.168.13.173 is the rpi ip address
  2019.10.22-11.45.mp4 is what you save to the disk.
