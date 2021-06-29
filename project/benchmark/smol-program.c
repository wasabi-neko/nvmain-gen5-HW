#include <stdio.h>
#include <stdlib.h>

#define ARRAY_SIZE 10000

int main(int argc, char **argv) {
    long long *array = malloc(sizeof(long) * ARRAY_SIZE);
    int *(ptr[ARRAY_SIZE]) = {0};

    for (int i = 0; i < 1000; i++) {
        array[i] = 10;
    }

    for (int i = 0; i < ARRAY_SIZE; i++) {
        ptr[i] = malloc(sizeof(int));
    }
    for (int i = 0; i < 1000; i++) {
        *ptr[random() % ARRAY_SIZE] = random() % 10000;
    }

    // for (int i = 0; i < 1000; i++) {
    //     printf("%d\n", *ptr[i]);
    // }

    return 0;
}