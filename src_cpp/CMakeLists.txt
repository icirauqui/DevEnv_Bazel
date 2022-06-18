cmake_minimum_required(VERSION 3.5)

project(POSTGRESDPC LANGUAGES CXX)

IF(NOT CMAKE_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE Release)
ENDIF()

MESSAGE("Build type: " ${CMAKE_BUILD_TYPE})

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}  -Wall -O3 -march=native ")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -O3 -march=native")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

include_directories(
  ${PROJECT_SOURCE_DIR}
)

#link_directories(
#)

#add_definitions(
#)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)

add_executable(${PROJECT_NAME}
    src/main.cpp
)

#target_link_libraries(${PROJECT_NAME}
#    ${PROJECT_SOURCE_DIR}/Thirdparty/g2o/lib/libg2o.so
#    ${PCL_LIBRARIES} 
#    ${VTK_LIBRARIES} 
#    Qt5::Widgets
#)