#include <iostream>
#include <test.h>

using namespace tdaw;

int main(int argc, char **argv)
{
    TestClass instance(5);

    std::cout << "Hello, world!" << std::endl;

    instance.print(std::cout);

    return 0;
}
