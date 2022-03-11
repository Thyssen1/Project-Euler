// Include pre-processor directives
#include <cmath>
#include "penta.h"

// Compute n'th Pentagonal number
int pentagonal(const int n)
{
	// Compute n'th Pentagonal number
	return n * (3 * n - 1) / 2;
}

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