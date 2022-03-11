// Include pre-processor directives
#include <iostream>

bool is_prime(unsigned int p) {
    if (p < 2) {
        return false;
    } else if (p == 2) {
        return true;
    } else {
        // First check if given number is divisible by 2 or 3
        if (p % 2 == 0 || p % 3 == 0) {
            return false;
        }
      
        // Define integer counter 
        int n = 0;
        unsigned next_prime = 0;

        while(next_prime < p) {
            // Increment counter
            n++;

            // Compute next possible prime number
            next_prime = 6*n-1;

            // Check if number is divisible by possible prime
            if (p % next_prime == 0 && next_prime < p) {
                return false;
            }

            // Compute next possible prime numbers
            next_prime = 6*n+1;

            if (p % next_prime == 0 && next_prime < p) {
                return false;
            }
        }
    }

    return true;
}


unsigned long long int sum_primes(const int* UPPER_BOUND) {

    // Return sum of all primes below UPPER_BOUND
    if (*UPPER_BOUND < 2) {
        return 0;
    } 
    else if (*UPPER_BOUND < 3) {
        return 2;
    } else {
        // Initialize integer variables 
        unsigned long long int sum = 5;
        unsigned int counter = 1;
        unsigned int current_prime = 5;

        // Compute sum of all primes below the upper bound
        while (current_prime < *UPPER_BOUND) {
            // Add prime to sum
            if (is_prime(current_prime)) {
                    sum += current_prime;
                }

            // Compute next prime number
            current_prime = 6 * counter + 1;

            // Check if number exceeds the upper bound
            if (current_prime < *UPPER_BOUND) {
                if (is_prime(current_prime)) {
                    sum += current_prime;
                }
            }

            // Advance counter
            counter++;

            // Compute next prime number
            current_prime = 6 * counter - 1;
        }

        // Return sum of prime numbers below UPPER_BOUND
        return sum;
    }
}


// Main program
int main() {
    
    // Compute sum of all prime numbers below N
    int* N = new int(100);
    unsigned int sum = sum_primes(N);

    std::cout << sizeof(int) << std::endl;

    // Display sum of all primes below N
    std::cout << "The sum of all primes below " << *N << " is: " << sum << std::endl;

    // Return 0 for succesful program execution
    return 0;
}