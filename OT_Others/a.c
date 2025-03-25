#include <stdio.h>
#include <stdlib.h>

void kaprekarf(int *n, int K)
{
    int num = 0, numRev = 0;

    // sort
    for (int i = 0; i < K; i++)
    {
        for (int j = i + 1; j < K; j++)
        {
            if (n[i] > n[j])
            {
                int temp = n[i];
                n[i] = n[j];
                n[j] = temp;
            }
        }
    }


    // convert array to number
    for (int i = 0; i < K; i++)
    {
        num = num * 10 + n[i];
        numRev = numRev * 10 + n[K - i - 1];
    }

    printf("%d - %d = ", numRev, num);

    if (num < numRev)
    {
        num = numRev - num;
    }
    else
    {
        num = num - numRev;
    }

    printf("%d\n", num);

    for (int i = 0; i < K; i++)
    {
        n[i] = num % 10;
        num = num / 10;
    }

    return;
}

int main(int argc, char *argv[])
{
    int K = argc > 2 ? atoi(argv[2]) : 4;
    int kaprekar[K];
    int frominput = argc > 1 ? atoi(argv[1]) : 1;

    for (int i = 0; i < K; i++)
    {
        scanf("%d", &kaprekar[i]);
    }

    for (int i = 0; i < frominput; i++)
    {
        kaprekarf(kaprekar, K);
    }

    return 0;
}