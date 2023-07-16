#/usr/bin/bash

here=$(pwd)
bin="${here}/target/aarch64-linux-android/release/template_nHA9NDay6C"

set -e

cargo b -r --target aarch64-linux-android

if [ ! -f $bin ]; then
    echo "Fail to build release"
    exit 1
fi

echo -e "Build successed"
cp -f $(realpath $bin) "${here}/build_module/"

cd "${here}/build_module/"
zip -9 -rq ../template_nHA9NDay6C.zip .

echo -n "Packaging is complete: $(realpath ${here}/template_nHA9NDay6C.zip)"
