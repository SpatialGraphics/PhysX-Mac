!bin/bash +x

export PM_CMakeModules_PATH=""

export PM_PATHS="/Users/yangfeng/Library/Application Support/packman-cache/chk/clang-physxmetadata/4.0.0.32489833_1;/Users/yangfeng/Library/Application Support/packman-cache/chk/PhysXGpu/5.4.1.86cd1749-release-106.0-linux-x86_64-public;/Users/yangfeng/Library/Application Support/packman-cache/chk/opengl-linux/2017.5.19.1;/Users/yangfeng/Library/Application Support/packman-cache/chk/rapidjson/1.1.0-67fac85-073453e1"

export PHYSX_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

./buildtools/packman/python.sh ./buildtools/cmake_generate_projects.py mac-arm64

cd compiler/mac-arm64
cmake --build . --config release -j10
cmake --build . --config debug -j10
cmake --build . --config checked -j10
cmake --build . --config profile -j10
