#include <test.h>

using namespace tdaw;

TestClass::TestClass(int member)
{
    this->member = member;
}

void TestClass::print(std::ostream &output)
{
    output << this->member << std::endl;
}
