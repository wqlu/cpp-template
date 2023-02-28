#
# Project settings
#
option(${PROJECT_NAME}_BUILD_EXECUTABLE "BUild the project as an exectable, rather than a library." OFF)
option(${PROJECT_NAME}_BUILD_HEADERS_ONLY "Build the project as a header-only library." OFF)
option(${PROJECT_NAME}_USE_ALT_NAMES "Use alternative names for the project, such as nameing the include directory all lowercase." ON)

#
# Unit testing
#
option(${PROJECT_NAME}_ENABLE_UNIT_TESTING "Enable unit tests for the projects (from the `test` subfolder)." ON)
option(${PROJECT_NAME}_USE_GTEST "Use the GoogleTest project for creating unit tests." ON)
option(${PROJECT_NAME}_USE_GOOGLE_MOCK "Use the GoogleMock project for extending the unit tests." OFF)

#
# Miscelanious options
#
option(${PROJECT_NAME}_VERBOSE_OUTPUT "Enable verbose output, allowing for a better understanding of each step taken." ON)
