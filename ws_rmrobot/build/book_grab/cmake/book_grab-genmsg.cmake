# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "book_grab: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(book_grab_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv" NAME_WE)
add_custom_target(_book_grab_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "book_grab" "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv" ""
)

get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv" NAME_WE)
add_custom_target(_book_grab_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "book_grab" "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/book_grab
)
_generate_srv_cpp(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/book_grab
)

### Generating Module File
_generate_module_cpp(book_grab
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/book_grab
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(book_grab_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(book_grab_generate_messages book_grab_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_cpp _book_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_cpp _book_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(book_grab_gencpp)
add_dependencies(book_grab_gencpp book_grab_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS book_grab_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/book_grab
)
_generate_srv_eus(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/book_grab
)

### Generating Module File
_generate_module_eus(book_grab
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/book_grab
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(book_grab_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(book_grab_generate_messages book_grab_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_eus _book_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_eus _book_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(book_grab_geneus)
add_dependencies(book_grab_geneus book_grab_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS book_grab_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/book_grab
)
_generate_srv_lisp(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/book_grab
)

### Generating Module File
_generate_module_lisp(book_grab
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/book_grab
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(book_grab_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(book_grab_generate_messages book_grab_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_lisp _book_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_lisp _book_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(book_grab_genlisp)
add_dependencies(book_grab_genlisp book_grab_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS book_grab_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/book_grab
)
_generate_srv_nodejs(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/book_grab
)

### Generating Module File
_generate_module_nodejs(book_grab
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/book_grab
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(book_grab_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(book_grab_generate_messages book_grab_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_nodejs _book_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_nodejs _book_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(book_grab_gennodejs)
add_dependencies(book_grab_gennodejs book_grab_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS book_grab_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/book_grab
)
_generate_srv_py(book_grab
  "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/book_grab
)

### Generating Module File
_generate_module_py(book_grab
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/book_grab
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(book_grab_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(book_grab_generate_messages book_grab_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/hh_eye.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_py _book_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/haoyu/ws_rmrobot/src/haoyu_code/book_grab/srv/try_getin.srv" NAME_WE)
add_dependencies(book_grab_generate_messages_py _book_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(book_grab_genpy)
add_dependencies(book_grab_genpy book_grab_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS book_grab_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/book_grab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/book_grab
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(book_grab_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/book_grab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/book_grab
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(book_grab_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/book_grab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/book_grab
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(book_grab_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/book_grab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/book_grab
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(book_grab_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/book_grab)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/book_grab\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/book_grab
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(book_grab_generate_messages_py std_msgs_generate_messages_py)
endif()
