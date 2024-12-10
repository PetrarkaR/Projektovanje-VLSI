#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

short isqrt(short n)
{
    short x = 0; //rezultat prethodnog oduzimanja
    short c = 0; //trenutni rezultat
    short d = 7; //brojac, za 16b broj
    while(d >= 0)
    {
        x <<= 2;
        x += (n >> (d*2)) & 0x03;
        short t = (c << 2) + 1;
        if(x >= t)
        {
            x -= t;
            c = (c << 1) + 1; //dodaje se 1 rezultatu
        }
        else c <<= 1; //dodaje se 0 rezultatu
        d--;
    }
    return c;
}

int main() {
    int i =0;
    for(i=0;i<200;i++){
        short result = isqrt(i);
        printf("Integer square root (rounded up) of %d is %d\n", i, result);
    }
    
    return 0;
}
