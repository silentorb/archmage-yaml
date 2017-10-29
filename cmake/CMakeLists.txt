cmake_minimum_required(VERSION 3.6)
project(archmage_yaml)

include(ExternalProject)

ExternalProject_Add(yaml
  GIT_REPOSITORY https://github.com/jbeder/yaml-cpp.git
  GIT_TAG release-0.5.3
  CMAKE_ARGS
  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
  -DBUILD_SHARED_LIBS=OFF
  )