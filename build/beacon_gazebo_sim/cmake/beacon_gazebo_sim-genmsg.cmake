# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "beacon_gazebo_sim: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ibeacon_gazebo_sim:/home/leon/test_ws/src/beacon_gazebo_sim/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(beacon_gazebo_sim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg" NAME_WE)
add_custom_target(_beacon_gazebo_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beacon_gazebo_sim" "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg" ""
)

get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg" NAME_WE)
add_custom_target(_beacon_gazebo_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beacon_gazebo_sim" "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg" NAME_WE)
add_custom_target(_beacon_gazebo_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beacon_gazebo_sim" "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg" "beacon_gazebo_sim/ReceiverIn"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_cpp(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_cpp(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg"
  "${MSG_I_FLAGS}"
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beacon_gazebo_sim
)

### Generating Services

### Generating Module File
_generate_module_cpp(beacon_gazebo_sim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beacon_gazebo_sim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(beacon_gazebo_sim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(beacon_gazebo_sim_generate_messages beacon_gazebo_sim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_cpp _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_cpp _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_cpp _beacon_gazebo_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beacon_gazebo_sim_gencpp)
add_dependencies(beacon_gazebo_sim_gencpp beacon_gazebo_sim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beacon_gazebo_sim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_eus(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_eus(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg"
  "${MSG_I_FLAGS}"
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beacon_gazebo_sim
)

### Generating Services

### Generating Module File
_generate_module_eus(beacon_gazebo_sim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beacon_gazebo_sim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(beacon_gazebo_sim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(beacon_gazebo_sim_generate_messages beacon_gazebo_sim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_eus _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_eus _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_eus _beacon_gazebo_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beacon_gazebo_sim_geneus)
add_dependencies(beacon_gazebo_sim_geneus beacon_gazebo_sim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beacon_gazebo_sim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_lisp(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_lisp(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg"
  "${MSG_I_FLAGS}"
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beacon_gazebo_sim
)

### Generating Services

### Generating Module File
_generate_module_lisp(beacon_gazebo_sim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beacon_gazebo_sim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(beacon_gazebo_sim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(beacon_gazebo_sim_generate_messages beacon_gazebo_sim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_lisp _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_lisp _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_lisp _beacon_gazebo_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beacon_gazebo_sim_genlisp)
add_dependencies(beacon_gazebo_sim_genlisp beacon_gazebo_sim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beacon_gazebo_sim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_nodejs(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_nodejs(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg"
  "${MSG_I_FLAGS}"
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beacon_gazebo_sim
)

### Generating Services

### Generating Module File
_generate_module_nodejs(beacon_gazebo_sim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beacon_gazebo_sim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(beacon_gazebo_sim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(beacon_gazebo_sim_generate_messages beacon_gazebo_sim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_nodejs _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_nodejs _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_nodejs _beacon_gazebo_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beacon_gazebo_sim_gennodejs)
add_dependencies(beacon_gazebo_sim_gennodejs beacon_gazebo_sim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beacon_gazebo_sim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_py(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beacon_gazebo_sim
)
_generate_msg_py(beacon_gazebo_sim
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg"
  "${MSG_I_FLAGS}"
  "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beacon_gazebo_sim
)

### Generating Services

### Generating Module File
_generate_module_py(beacon_gazebo_sim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beacon_gazebo_sim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(beacon_gazebo_sim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(beacon_gazebo_sim_generate_messages beacon_gazebo_sim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverIn.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_py _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/BeaconSimPose.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_py _beacon_gazebo_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/leon/test_ws/src/beacon_gazebo_sim/msg/ReceiverInSyncPacked.msg" NAME_WE)
add_dependencies(beacon_gazebo_sim_generate_messages_py _beacon_gazebo_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beacon_gazebo_sim_genpy)
add_dependencies(beacon_gazebo_sim_genpy beacon_gazebo_sim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beacon_gazebo_sim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beacon_gazebo_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beacon_gazebo_sim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(beacon_gazebo_sim_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(beacon_gazebo_sim_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beacon_gazebo_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beacon_gazebo_sim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(beacon_gazebo_sim_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(beacon_gazebo_sim_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beacon_gazebo_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beacon_gazebo_sim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(beacon_gazebo_sim_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(beacon_gazebo_sim_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beacon_gazebo_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beacon_gazebo_sim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(beacon_gazebo_sim_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(beacon_gazebo_sim_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beacon_gazebo_sim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beacon_gazebo_sim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beacon_gazebo_sim
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(beacon_gazebo_sim_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(beacon_gazebo_sim_generate_messages_py geometry_msgs_generate_messages_py)
endif()
