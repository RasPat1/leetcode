#include <iostream>
#include "common/testcase.cpp"
#include "two-sum/two_sum.cpp"

int main(int argc, char** argv) {
    std::cout << "Hello\n";
    Solution solution;
    std::vector<int> input = {1,2,4,7,11,15};
    std::vector<int> result = solution.twoSum(input, 9);
    for (int i = 0; i < result.size(); i++) {
      std::cout << result[i];
    }
    std::cout << "\n";

    return 0;
}

// The input is really just a bunch of text. We want it to be arbitrary.
// But the input reading seems like it needs to be tied to the problem right.
// What we want is a framework that will work for general problems.
// We'll skip that even though it'll be fun. But we could require our input
// to specify the number of lines per test case and number of test cases
// and then the test runner would hold a number of test cases and the solution
// would operate on an individual test case.
void readInput(std::vector<TestCase>& cases) {

}
