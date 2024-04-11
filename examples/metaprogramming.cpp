// g++ -std=c++14 metaprogramming.cpp -o metaprogramming
#include <iostream>

template <int N>
struct Factorial
{
    enum { value = N * Factorial<N-1>::value };
};

template <>
struct Factorial<0>
{
    enum { value = 1 };
};

// example use
int main()
{
    std::cout << Factorial<4>::value << std::endl;
    return 0;

}
