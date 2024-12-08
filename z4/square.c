#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

uint16_t integer_sqrt_roundup(uint16_t x) {
    int cnt = 0;
    uint16_t diff = 0;
    uint16_t min = 0;
    uint16_t sub = 0;
    uint8_t root = 0;
    uint32_t registerA = x;

    printf("Initial value of registerA: 0x%04X (%d)\n", registerA, registerA);

    while (cnt < 12) {
        // Extract 8 MSB of registerA as 'min'
        min = (registerA >> 16) & 0xFFFF;
        // Calculate sub
        sub = (root << 2) | 0x01;
        // Calculate diff
        diff = min - sub;

        printf("\nStep %d:\n", cnt + 1);
        printf("  root: 0x%02X (%d)\n", root, root);
        printf("  min (8 MSB of registerA): 0x%03X (%d)\n", min, min);
        printf("  sub: 0x%02X (%d)\n", sub, sub);
        printf("  diff (min - sub): 0x%03X (%d)\n", diff, diff);

        if (min < sub) {
            // If subtraction fails
            registerA = ((diff & 0xFfF) << 12) | ((registerA & 0xFFFFF) << 2);
            root = (root<<1);
            
            printf("  min < sub: subtraction unsuccessful\n");
            printf("  Updated registerA: 0x%04X (%d)\n", registerA, registerA);
            printf("  Updated root (shifted left): 0x%02X (%d)\n", root, root);
        } else {
            // If subtraction is successful
            registerA = registerA<<2;
            root = root | 0x01;
            
            printf("  sub >= min: subtraction successful\n");
            printf("  Updated registerA: 0x%04X (%d)\n", registerA, registerA);
            printf("  Updated root (OR with 1): 0x%02X (%d)\n", root, root);
        }
        if(root*root==x){
            break;
        }
        cnt++;
    }

    printf("\nFinal root: 0x%02X (%d)\n", root, root);
    return root;
}

int main() {
    uint16_t x = 36;  // Example value
    uint16_t result = integer_sqrt_roundup(x);
    printf("Integer square root (rounded up) of %d is %d\n", x, result);
    return 0;
}
