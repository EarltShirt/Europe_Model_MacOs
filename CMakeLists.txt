cmake_minimum_required(VERSION 3.10)
project(Europe VERSION 1.0)

set(CMAKE_CXX_STANDARD 17)

# Specify the path to the curl and libzip installation directories
set(CURL_ROOT "/opt/homebrew")
set(LIBZIP_ROOT "/opt/homebrew")

find_package(CURL REQUIRED)
find_package(LibZip REQUIRED)
include_directories(include)
include_directories(/opt/homebrew/Cellar/curl/8.1.2/include)
include_directories(/opt/homebrew/Cellar/libzip/1.9.2/include)

add_executable(Europe src/main.cpp src/load.cpp src/unzip.cpp)
target_link_libraries(Europe PRIVATE CURL::libcurl libzip::zip)
