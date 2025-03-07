#include <stdio.h>

int kalkulasiPemain(int umur){
    int hasil;

    if (umur < 20) {
        hasil = 1000 * 1.15;
    }
    else if (umur < 30) {
        hasil = 1000 * 1.2;
    }
    else {
        hasil = 1000 * 0.95;
    }

    return hasil;
}

void print(int n){
    printf("%d", n);
}