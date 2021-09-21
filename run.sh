#!/bin/env bash

set -euxo pipefail
rm -rf build
mkdir build
cd build

emcmake cmake .. -DCMAKE_BUILD_TYPE=Release
#cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=/emsdk/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake
emmake make

cd bin
emcc ./libopenjp2.a -o libopenjpeg.html

cd ..
