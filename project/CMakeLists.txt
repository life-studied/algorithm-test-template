cmake_minimum_required(VERSION 3.25)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 20)

project(my_project)

set(CMAKE_CONFIGURATION_TYPES "Debug;Release")
if (CMAKE_BUILD_TYPE MATCHES "(Debug)|(Release)")
    message("Current build type: ${CMAKE_BUILD_TYPE}")
else()
    message("Set default buile type to Debug.")
    set(CMAKE_BUILD_TYPE "Debug")
    ADD_DEFINITIONS(-DDEBUG)
endif()

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)
configure_file(input.txt ${EXECUTABLE_OUTPUT_PATH}/input.txt COPYONLY)
configure_file(reinput.sh ${EXECUTABLE_OUTPUT_PATH}/reinput.sh COPYONLY)

add_executable(main main.cpp)

message("execute reinput.sh")
execute_process(COMMAND bash reinput.sh
                WORKING_DIRECTORY ${EXECUTABLE_OUTPUT_PATH}
                TIMEOUT 10)