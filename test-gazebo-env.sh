docker run -it \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    gazebo:latest\
    bash
#apt-get update && apt-get install -y curl
#curl -o double_pendulum.sdf http://models.gazebosim.org/double_pendulum_with_base/model-1_4.sdf
#gz model --model-name double_pendulum --spawn-file double_pendulum.sdf &
#gzclient --verbose

export containerId=$(docker ps -l -q)
xhost +local:`docker inspect --format='' $containerId`
docker start $containerId
