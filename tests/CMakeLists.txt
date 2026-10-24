include(FetchContent)
FetchContent_Declare(googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG v1.15.2)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

add_executable(northutil_tests test_allocators.cpp)
target_link_libraries(northutil_tests PRIVATE northutil::northutil GTest::gtest_main)

include(GoogleTest)
gtest_discover_tests(northutil_tests)