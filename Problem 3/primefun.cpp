// Include library functions
#include <vector>
#include "primefun.h"

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



