# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "zfmsg: 6 messages, 0 services")

set(MSG_I_FLAGS "-Izfmsg:/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(zfmsg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg" NAME_WE)
add_custom_target(_zfmsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zfmsg" "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg" NAME_WE)
add_custom_target(_zfmsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zfmsg" "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg" NAME_WE)
add_custom_target(_zfmsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zfmsg" "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg" NAME_WE)
add_custom_target(_zfmsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zfmsg" "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg" NAME_WE)
add_custom_target(_zfmsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zfmsg" "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg" NAME_WE)
add_custom_target(_zfmsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zfmsg" "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg
)
_generate_msg_cpp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg
)
_generate_msg_cpp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg
)
_generate_msg_cpp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg
)
_generate_msg_cpp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg
)
_generate_msg_cpp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg
)

### Generating Services

### Generating Module File
_generate_module_cpp(zfmsg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(zfmsg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(zfmsg_generate_messages zfmsg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_cpp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_cpp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_cpp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_cpp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_cpp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_cpp _zfmsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zfmsg_gencpp)
add_dependencies(zfmsg_gencpp zfmsg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zfmsg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg
)
_generate_msg_eus(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg
)
_generate_msg_eus(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg
)
_generate_msg_eus(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg
)
_generate_msg_eus(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg
)
_generate_msg_eus(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg
)

### Generating Services

### Generating Module File
_generate_module_eus(zfmsg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(zfmsg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(zfmsg_generate_messages zfmsg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_eus _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_eus _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_eus _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_eus _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_eus _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_eus _zfmsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zfmsg_geneus)
add_dependencies(zfmsg_geneus zfmsg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zfmsg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg
)
_generate_msg_lisp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg
)
_generate_msg_lisp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg
)
_generate_msg_lisp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg
)
_generate_msg_lisp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg
)
_generate_msg_lisp(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg
)

### Generating Services

### Generating Module File
_generate_module_lisp(zfmsg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(zfmsg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(zfmsg_generate_messages zfmsg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_lisp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_lisp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_lisp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_lisp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_lisp _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_lisp _zfmsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zfmsg_genlisp)
add_dependencies(zfmsg_genlisp zfmsg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zfmsg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg
)
_generate_msg_nodejs(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg
)
_generate_msg_nodejs(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg
)
_generate_msg_nodejs(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg
)
_generate_msg_nodejs(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg
)
_generate_msg_nodejs(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(zfmsg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(zfmsg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(zfmsg_generate_messages zfmsg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_nodejs _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_nodejs _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_nodejs _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_nodejs _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_nodejs _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_nodejs _zfmsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zfmsg_gennodejs)
add_dependencies(zfmsg_gennodejs zfmsg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zfmsg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg
)
_generate_msg_py(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg
)
_generate_msg_py(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg
)
_generate_msg_py(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg
)
_generate_msg_py(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg
)
_generate_msg_py(zfmsg
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg
)

### Generating Services

### Generating Module File
_generate_module_py(zfmsg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(zfmsg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(zfmsg_generate_messages zfmsg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_py _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_py _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_py _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_py _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_py _zfmsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg" NAME_WE)
add_dependencies(zfmsg_generate_messages_py _zfmsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zfmsg_genpy)
add_dependencies(zfmsg_genpy zfmsg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zfmsg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zfmsg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(zfmsg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zfmsg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(zfmsg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zfmsg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(zfmsg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zfmsg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(zfmsg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zfmsg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(zfmsg_generate_messages_py std_msgs_generate_messages_py)
endif()
