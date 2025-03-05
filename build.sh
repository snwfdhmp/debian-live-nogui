dir=$(dirname $0)
cd $dir
sudo rm -rf dist
mkdir -p dist

img_name="debian-live-nogui-builder-$(date +'%Y-%m-%d-%H-%M-%S')"
sudo docker build -t $img_name .

# --privileged required
# https://docs.docker.com/engine/containers/run/#runtime-privilege-and-linux-capabilities
# note: if you find a way to build with less permission, please open an issue/PR
sudo docker run --privileged -v $dir/dist:/dist $img_name

ls $dir/dist/*.iso
