// Include library functions
#include <iostream>
#include <algorithm>

int main()
{
    int i = 1;
    int sum = 0;
    int N = 1000;       
    int j = 1;

    while( std::min(3 * i, 5 * j) < N )
    {
        // Find lowest multiple 
        if (3*i < 5*j){
            // Add multiple to sum and advance to next multiple of 3
            sum += 3*i; 
            i++;
        }
        else {
            // Check if number is divisible by both 3 and 5 to avoid double counting
            if (5*j % 3 == 0){
                // Number is divisible by both integers. Skip 3*i
                i++;
            }

            // Add multiple to sum and advance to next multiple of 5
            sum += 5*j;
            j++;
        }
    }

    std::cout << sum << std::endl;


    // Try brute force method
    sum = 0;
    i = 1;

    while (i < N)
    {
        if (i % 3 == 0 || i % 5 == 0){
            sum += i;
        }

        i++;
    }

    std::cout << sum << std::endl;

    std::cin >> i;

    return 0;
}