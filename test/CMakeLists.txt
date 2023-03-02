cmake_minimum_required(VERSION 3.15)

#
# Project details
#
project(
  ${CMAKE_PROJECT_NAME}Tests
  LANGUAGES CXX
  )

message(STATUS "Adding tests under ${CMAKE_PROJECT_NAME}Tests...")

foreach(file ${test_sources})
  string(REGEX REPLACE "(.*/)([a-zA-Z0-9_ ]+)(\.cpp)" "\\2" test_name ${file})
  add_executable(${test_name}_Tests ${file})
  #
  # Set the compiler standard
  #
  target_compile_features(${test_name}_Tests PUBLIC cxx_std_17)

  #
  # Setup code coverage if enabled
  # TODO

  #
  # Load the desired united testing framewokr, I choose GoogleTest
  #
  if(${CMAKE_PROJECT_NAME}_BUILD_EXECUTABLE)
    set(${CMAKE_PROJECT_NAME}_TEST_LIB ${CMAKE_PROJECT_NAME}_LIB)
  else()
    set(${CMAKE_PROJECT_NAME}_TEST_LIB ${CMAKE_PROJECT_NAME})
  endif()

  if(${CMAKE_PROJECT_NAME}_USE_GTEST)
    find_package(GTest REQUIRED)

    if(${CMAKE_PROJECT_NAME}_USE_GOOGLE_MOCK)
      set(GOOGLE_MOCK_LIBRARIES GTest::gmock GTest::gmock_main)
    endif()

    target_link_libraries(
      ${test_name}_Tests
      PUBLIC
        GTest::GTest
        GTest::Main
        ${GOOGLE_MOCK_LIBRARIES}
        ${${CMAKE_PROJECT_NAME}_TEST_LIB}
      )
  endif()

  #
  # Add the unit tests
  #
  add_test(
    NAME
      ${test_name}
    COMMAND
      ${test_name}_Tests
    )
endforeach()

message(STATUS "Finished adding unit tests for ${CMAKE_PROJECT_NAME}.")
