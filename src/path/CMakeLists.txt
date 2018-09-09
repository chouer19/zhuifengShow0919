# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(path)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs nav_msgs geometry_msgs genmsg zf_msgs)
## Find Eigen, for matrix operation
find_package (Eigen3 REQUIRED NO_MODULE)

## Declare ROS messages and services
#add_message_files(FILES Num.msg)
# add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(gps_planner src/gps_planner.cpp)
target_link_libraries(gps_planner ${catkin_LIBRARIES} ${Boost_LIBRARIES} Eigen3::Eigen)
#target_link_libraries(test_pos320 ${Boost_LIBRARIES} Eigen3::Eigen)
add_dependencies(gps_planner path_generate_messages_cpp)

# %EndTag(FULLTEXT)%
