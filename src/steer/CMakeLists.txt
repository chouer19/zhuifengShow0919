# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(steer)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs nav_msgs geometry_msgs genmsg zf_msgs)

## Declare ROS messages and services
#add_message_files(FILES Num.msg)
# add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs geometry_msgs zf_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(pure_pursuit src/pure_pursuit.cpp)
target_link_libraries(pure_pursuit ${catkin_LIBRARIES})
add_dependencies(pure_pursuit steer_generate_messages_cpp)

# %EndTag(FULLTEXT)%
