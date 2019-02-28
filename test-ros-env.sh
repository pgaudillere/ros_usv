#export X11 windows to Host system
export DISPLAY=192.168.99.1:0.0

docker run -it \
    -u $(id -u):$(id -g) \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="/home/pierre/Documents/ros/home:/home/user" \
    ros_image:version0.1 \
    bash
#rqt
export containerId=$(docker ps -l -q)
xhost +local:`docker inspect --format='' $containerId`
docker start $containerId
