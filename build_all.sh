#!/bin/bash

dir=$(dirname $0)
cd $dir
rm -rf dist_all
mkdir -p dist_all

# Build all profiles in ./profiles directory
for profile in ./profiles/*.sh; do
    if [ -f "$profile" ]; then
        echo "====== $profile: building target ======"
        name=$(basename "$profile" .sh)
        ./build.sh "$profile"
        mv dist/*.iso dist_all/$name.iso
        echo "====== $profile: done building ======"
    fi
done

echo "====== All targets built ======"
ls dist_all
