#!/bin/bash

dir=$(dirname $0)
cd $dir
rm -rf dist_all
mkdir -p dist_all

BUILD_LOG_FILE="dist_all/build.log"

echo "# Click on the profile name to see the build configuration" >$BUILD_LOG_FILE

# Build all profiles in ./profiles directory
for profile in ./profiles/*.sh; do
    if [ -f "$profile" ]; then
        name=$(basename "$profile" .sh)
        echo "====== $name: building target ======"

        printf "<details><summary><b>$name</b></summary>\n\n" >>$BUILD_LOG_FILE
        printf "\`\`\`\n" >>$BUILD_LOG_FILE
        cat $profile >>$BUILD_LOG_FILE
        printf "\`\`\`\n" >>$BUILD_LOG_FILE
        printf "</details>" >>$BUILD_LOG_FILE

        # ./build.sh "$profile"
        # mv dist/*.iso dist_all/$name.iso

        echo "====== $name: done building ======"
    fi
done

echo "====== All targets built ======"
ls dist_all
