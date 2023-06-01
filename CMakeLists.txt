cmake_minimum_required(VERSION 3.10)
project(Europe VERSION 1.0)

set(CMAKE_CXX_STANDARD 17)

include_directories(/opt/homebrew/Cellar/curl/8.1.2/include)
include_directories(/opt/homebrew/Cellar/libzip/1.9.2/include)

link_directories(/opt/homebrew/Cellar/curl/8.1.2/lib)
link_directories(/opt/homebrew/Cellar/libzip/1.9.2/lib)

add_executable(Europe src/main.cpp src/load.cpp src/unzip.cpp)

target_link_libraries(Europe curl zip)
