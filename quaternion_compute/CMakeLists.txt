project(QUATERNIONk)

include_directories("${PROJECT_SOURCE_DIR}/src")
set(SRC_LIST src/quaternion_haoyu.cpp src/demo.cpp)
add_executable(quaternion_test ${SRC_LIST})
