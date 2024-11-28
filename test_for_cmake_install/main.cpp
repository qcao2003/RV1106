#include <string>
#include <iostream>	
#include "func.hpp"

using namespace std;

int main(void)
{
	MyClass MC;
	MC.numInstances = 2;
    func(200);
	std::cout << "hello c++!" << MC.numInstances << std::endl;
	MC.func_c_plus1();
	MC.func_c_plus2();
	std::cout << "hello c++!" << std::endl;
	return 0;
}


