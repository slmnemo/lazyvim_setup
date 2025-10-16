#include "test.h"
#include <stdbool.h>
#include <stdio.h>

bool yuri = true;
const char *characters[2] = {"Kasumi", "Haruyo"};

void print_ship(bool is_yuri, const char *girls[], int size_t) {
    if (is_yuri) {
        printf("List of Gay Women: \n");
        for (int i = 0; i < size_t; i++) {
            printf("  ");
            printf(girls[i]);
            printf("\n");
        }
    } else {
        printf("I do not care for het ships.");
    }
}

int main(void) {
    print_ship(yuri, characters, 2);
    return 0;
};
