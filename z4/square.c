#include <stdlib.h>
#include <stdint.h>

uint16_t integer_sqrt_roundup(uint16_t x) {
    if (x == 0) return 0;
    
    uint16_t left = 1;
    uint16_t right = x;
    uint16_t result = 0;
    
    while (left <= right) {
        uint16_t mid = left + (right - left) / 2;
        uint16_t square = mid * mid;
        
        if (square == x) {
            return mid;  // Perfect square
        }
        
        if (square < x) {
            left = mid + 1;
            result = mid;  // Store the largest integer whose square is <= x
        } else {
            right = mid - 1;
            result = mid;  // Store the smallest integer whose square is >= x
        }
    }
    
    // If the square of the current result is less than x, 
    // we need to round up to the next integer
    return (result * result < x) ? result + 1 : result;
}

int main() {
    uint16_t test_numbers[] = {1764};
    
    for (int i = 0; i < sizeof(test_numbers)/sizeof(test_numbers[0]); i++) {
        uint16_t sqrt_value = integer_sqrt_roundup(test_numbers[i]);
        printf("Sqrt of %d (rounded up) is %d\n", test_numbers[i], sqrt_value);
        printf("Verification: %d^2 = %d\n", sqrt_value, sqrt_value * sqrt_value);
    }
    
    return 0;
}