execute_process(COMMAND "/home/leon/test_ws/build/external_dependencies/unique_identifier/unique_id/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/leon/test_ws/build/external_dependencies/unique_identifier/unique_id/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
