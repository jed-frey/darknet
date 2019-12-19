cmake_minimum_required(VERSION 3.5)

project(Image_processing)

set(CMAKE_CXX_STANDARD 14)

find_package(OpenCV REQUIRED)

include_directories(include)
include_directories(src)

file(GLOB_RECURSE SOURCES RELATIVE ${CMAKE_SOURCE_DIR} "src/*.c" "examples/darknet.c")
add_executable(main ${SOURCES})

target_link_libraries(main ${OpenCV_LIBS})
