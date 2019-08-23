#pragma once

#include <ostream>

namespace tdaw
{
    class TestClass
    {
        public:
            TestClass(int);
            void print(std::ostream &);
        private:
            int member;
    };
}
