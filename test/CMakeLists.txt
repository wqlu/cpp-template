cmake_minimum_required(VERSION 3.15)

#
# Project details
#
project(
  ${CMAKE_PROJECT_NAME}Tests
  LANGUAGES CXX
  )

verbose_message("Adding tests under ${CMAKE_PROJECT_NAME}Tests...")

foreach(file ${test_sources})
  string(REGEX REPLACE "(.*/)([a-zA-Z0-9_ ]+)(\.cpp)" "\\2" test_name ${file})
  add_executable(${test_name}_Tests ${file})
  #
  # Set the compiler standard
  #
  target_compile_features(${test_name}_Tests PUBLIC cxx_std_17)
endforeach()
