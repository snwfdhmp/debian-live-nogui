dir=$(dirname $0)
cd $dir

## Parse arguments

profile_path="profiles/default.sh"
if [ "$1" = "--help" ]; then
    echo "usage: $0 [path/to/lb_script.sh]"
    echo "example: $0 profiles/default.sh"
    exit 0
fi

if [ -n "$1" ]; then
    profile_path="$1"
fi

if [ ! -f "$profile_path" ]; then
    echo "Error: Profile '$profile_path' does not exist"
    exit 1
fi

## Build the image

sudo rm -rf dist
mkdir -p dist

img_name="debian-live-nogui-builder-$(date +'%Y-%m-%d-%H-%M-%S-%N')-$RANDOM"
sudo docker build -t $img_name .

# --privileged required
# https://docs.docker.com/engine/containers/run/#runtime-privilege-and-linux-capabilities
# note: if you find a way to build with less permission, please open an issue/PR
sudo docker run --rm --privileged -v $profile_path:/cmd.sh -v $dir/dist:/dist $img_name /bin/bash -c /cmd.sh

sleep 1

sudo docker image rm $img_name
