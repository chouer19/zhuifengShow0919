# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "zf_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Izf_msgs:/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(zf_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg" NAME_WE)
add_custom_target(_zf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zf_msgs" "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg" NAME_WE)
add_custom_target(_zf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zf_msgs" "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg" "geometry_msgs/Pose2D:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zf_msgs
)
_generate_msg_cpp(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zf_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(zf_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zf_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(zf_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(zf_msgs_generate_messages zf_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_cpp _zf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_cpp _zf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zf_msgs_gencpp)
add_dependencies(zf_msgs_gencpp zf_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zf_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zf_msgs
)
_generate_msg_eus(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zf_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(zf_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zf_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(zf_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(zf_msgs_generate_messages zf_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_eus _zf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_eus _zf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zf_msgs_geneus)
add_dependencies(zf_msgs_geneus zf_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zf_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zf_msgs
)
_generate_msg_lisp(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zf_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(zf_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zf_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(zf_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(zf_msgs_generate_messages zf_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_lisp _zf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_lisp _zf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zf_msgs_genlisp)
add_dependencies(zf_msgs_genlisp zf_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zf_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zf_msgs
)
_generate_msg_nodejs(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zf_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(zf_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zf_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(zf_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(zf_msgs_generate_messages zf_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_nodejs _zf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_nodejs _zf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zf_msgs_gennodejs)
add_dependencies(zf_msgs_gennodejs zf_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zf_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zf_msgs
)
_generate_msg_py(zf_msgs
  "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zf_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(zf_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zf_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(zf_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(zf_msgs_generate_messages zf_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pos320.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_py _zf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zf/xuechong_ws/zhuifengShow0919/src/zf_msgs/msg/pose2dArray.msg" NAME_WE)
add_dependencies(zf_msgs_generate_messages_py _zf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zf_msgs_genpy)
add_dependencies(zf_msgs_genpy zf_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zf_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zf_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(zf_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(zf_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zf_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(zf_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(zf_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zf_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(zf_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(zf_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zf_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(zf_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(zf_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zf_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zf_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zf_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(zf_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(zf_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
