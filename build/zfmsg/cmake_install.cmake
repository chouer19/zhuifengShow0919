# Install script for directory: /home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zf/xuechong_ws/zhuifengShow0919/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zfmsg/msg" TYPE FILE FILES
    "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/SteerStatus.msg"
    "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/BreakStatus.msg"
    "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/ThrottleGearStatus.msg"
    "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/MotionCmd.msg"
    "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfo.msg"
    "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg/CanInfoAW.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zfmsg/cmake" TYPE FILE FILES "/home/zf/xuechong_ws/zhuifengShow0919/build/zfmsg/catkin_generated/installspace/zfmsg-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zf/xuechong_ws/zhuifengShow0919/devel/include/zfmsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/zf/xuechong_ws/zhuifengShow0919/devel/share/roseus/ros/zfmsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zf/xuechong_ws/zhuifengShow0919/devel/share/common-lisp/ros/zfmsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/zf/xuechong_ws/zhuifengShow0919/devel/share/gennodejs/ros/zfmsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/zf/xuechong_ws/zhuifengShow0919/devel/lib/python2.7/dist-packages/zfmsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/zf/xuechong_ws/zhuifengShow0919/devel/lib/python2.7/dist-packages/zfmsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zf/xuechong_ws/zhuifengShow0919/build/zfmsg/catkin_generated/installspace/zfmsg.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zfmsg/cmake" TYPE FILE FILES "/home/zf/xuechong_ws/zhuifengShow0919/build/zfmsg/catkin_generated/installspace/zfmsg-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zfmsg/cmake" TYPE FILE FILES
    "/home/zf/xuechong_ws/zhuifengShow0919/build/zfmsg/catkin_generated/installspace/zfmsgConfig.cmake"
    "/home/zf/xuechong_ws/zhuifengShow0919/build/zfmsg/catkin_generated/installspace/zfmsgConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zfmsg" TYPE FILE FILES "/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/package.xml")
endif()

