cmake_minimum_required(VERSION 3.6)
project(archmage_yaml)

include(ExternalProject)

ExternalProject_Add(yaml
  GIT_REPOSITORY https://github.com/jbeder/yaml-cpp.git
  GIT_TAG beb44b872c07c74556314e730c6f20a00b32e8e5
  CMAKE_ARGS
  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
  -DBUILD_SHARED_LIBS=OFF
  -YAML_CPP_BUILD_TOOLS=OFF
  -YAML_CPP_BUILD_CONTRIB=OFF
  )