// Include directives for the pre-processor
#include <iostream>
#include <cmath>
#include "penta.h"

/*
// Compute n'th Pentagonal number
int pentagonal(const int n)
{
	// Compute n'th Pentagonal number
	return n * (3 * n - 1) / 2;
}

// Return 1 if m is pentagonal. Otherwise return 0
bool check_pentagonal(const int penta_num)
{
    // Convert penta_num to double
    double m = (double) penta_num;

	// Compute possible integer
	double penta_idx = (1 + sqrt(1 + 24 * m)) / 6;

	// Check whether or not the number m corresponds to an integer n Pentagonal number
    bool is_pentagonal = (penta_idx-floor(penta_idx)) < pow(10, -12);

	return is_pentagonal;
}
*/

// Main program
int main()
{
    // Initialize integers
	int n = 1;
	int k = 0;

    // Initialize Pentagonal numbers and their sums and differences
	int Pn;
	int Pk;
    double diff;
	double sum;

    // Initialize boolean for stopping while loop
	bool is_pentagonal = false;

	// Run loop until sum and difference of Pn and Pnk are pentagonal
	while (!is_pentagonal) {
		// Increment n
		n++;

		// Compute n'th Pentagonal number
		Pn = pentagonal(n);

		// Reset k for next loop
		k = 0;

		// Increment k until sum and difference of Pn and Pnk are Pentagonal or loop ends
		while (k < n && !is_pentagonal) {
			// Increment k
			k++;

			// Compute (n+k)'th Pentagonal number
			Pk = pentagonal(k);

			// Compute sum 
			sum = Pn + Pk;

            is_pentagonal = check_pentagonal(sum);

			// If sum is pentagonal, then check difference
			if (is_pentagonal) {
				// Compute difference
				diff = Pn - Pk;

				// Return true, then stop. If false, then continue
				is_pentagonal = check_pentagonal(diff);
			}
			else {
				// Reset boolean value
				is_pentagonal = false;
			}
		}
	}

    // Print the indices for the n'th and k'th Pentagonal numbers
	std::cout << "n = " << n << std::endl;
	std::cout << "k = " << k << std::endl;

    // Print sum
    std::cout << sum << std::endl;
    std::cout << diff << std::endl;

	return 0;
}