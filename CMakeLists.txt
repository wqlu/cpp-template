cmake_minimum_required(VERSION 3.15)

project(
  "cpp-template"
  VERSION 0.1.0
  LANGUAGES CXX
  )

#
# Set project options
#

include(cmake/Utils.cmake)
message(STATUS "Started CMake for ${PROJECT_NAME} v${PROJECT_VERSION}...\n")

add_clang_format_target()
