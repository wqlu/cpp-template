#
# Print a message only if the `VERBOSE_OUTPUT` option is on
#
function(verbose_message content)
  if(${PROJECT_NAME}_VERBOSE_OUTPUT)
    message(STATUS ${content})
  endif()
endfunction()

#
# Add a target for formatign the project using `clang-format` (i.e: cmake --build build --target clang-format)
#

function(add_clang_format_target)
  if(NOT ${PROJECT_NAME}_CLANG_FORMAT_BINARY)
    find_program(${PROJECT_NAME}_CLANG_FORMAT_BINARY clang-format)
  endif()

  if(${PROJECT_NAME}_CLANG_FORMAT_BINARY)
    if(${PROJECT_NAME}_BUILD_EXECUTABLE)
      add_custom_target(clang-format
                        COMMAND ${${PROJECT_NAME}_CLANG_FORMAT_BINARY}
                        -i ${exe_sources} ${header}
                        WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR})
    elseif()
    else()
    endif()
    message(STATUS "")
  endif()
endfunction()
