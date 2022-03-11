// Include library functions
#include <cmath>
#include <iostream>

// Declare function prototypes
int fib(int n);

// Main program
int main()
{
    // Declare initialized variables
    int sum = 0;
    int n = 0;
    int fib_num = fib(3);

    // Set upper bound
    const int UPPER = 4000000;

    // Sum all even-valued fibonacci numbers below upper bound
    do {
        // Increment count
        n += 3;

        // Add to sum
        sum += fib_num;

        // Compute next even fibonacci number
        fib_num = fib(n+3);

    } while (fib_num < UPPER);

    // Display sum to output stream
    std::cout << sum << std::endl;

    // Return 0 for succesful program execution
    return 0;
}

int fib(int n) {
    return 1 / (sqrt(5) * pow(2,n)) * (pow(1+sqrt(5),n) - pow(1 - sqrt(5),n));
}