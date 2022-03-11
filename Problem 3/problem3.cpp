// Include library and custom functions
#include <iostream>
#include <vector>
// #include "primefun.h"


// Trial division algorithm
template <typename T>
T trial_division(T n) {
    T f = 2;
    while ((n % f) != 0) {
        f++;
    }

    return f;
}

// Prime factor function
template <typename S>
std::vector<S> prime_fac(const S & n) {
    S m = n;
    std::vector<S> f;

    while (m != 1) {
        // Compute and store prime factor in vector
        f.push_back(trial_division(m));

        // Update number
        m /= f.back();
    }

    // Return vector of factors
    return f;
}


// Main code
int main() {
    // Define prime number to be factored
    //unsigned long long n = 600851475143;
    unsigned long long n;
    std::cin >> n;

    // Define uninitialized vector for containing prime factors of n
    std::vector<unsigned long long> f;

    // Compute prime factors
     f = prime_fac(n);

    // Display prime factors
    for (std::vector<unsigned long long>::const_iterator iter = f.begin(); iter != f.end(); iter++) {
        std::cout << *iter << std::endl;
    }
    

    // Return 0 for succesful program execution
    return 0;
}

