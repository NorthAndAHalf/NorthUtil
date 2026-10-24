#include <northutil/allocators.hpp>
#include "gtest/gtest.h"

TEST(TestRunner, Test) {
    EXPECT_EQ(NorthUtil::TestRunner::RunTest(11), 21);
}