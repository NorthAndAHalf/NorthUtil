#!/usr/bin/env bash
set -e

# Configure only if the build folder doesn't exist yet
if [ ! -d build ]; then
  cmake -B build -DCMAKE_BUILD_TYPE=Debug \
        -DCMAKE_CXX_COMPILER=clang++ \
        -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
fi

cmake --build build -j
ctest --test-dir build --output-on-failure