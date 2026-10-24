cmake_minimum_required(VERSION 3.20)
project(NorthUtil VERSION 1.0.0 LANGUAGES CXX)

add_library(NorthUtil src/allocators.cpp)
add_library(NorthUtil::NorthUtil ALIAS NorthUtil)
add_library(northutil::northutil ALIAS NorthUtil)

target_compile_features(NorthUtil PUBLIC cxx_std_23)
target_include_directories(NorthUtil PUBLIC include)

if(PROJECT_IS_TOP_LEVEL)   # CMake 3.21+
  option(NORTHUTIL_BUILD_TESTS "Build NorthUtil tests" ON)
  if(NORTHUTIL_BUILD_TESTS)
    enable_testing()
    add_subdirectory(tests)
  endif()
endif()