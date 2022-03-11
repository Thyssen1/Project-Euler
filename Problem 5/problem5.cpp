#include <iostream>

class primelist {
    public:
    // Constructor
    primelist(int n) {
        primes = new int[n];

        
    }

    // Destructor
    ~primelist() {
        std::cout << "Destroy" << std::endl;

    }




    private:
    int *primes;
};


int main()
{
    // Instantiate class
    primelist a(20);

    return 0;
}

