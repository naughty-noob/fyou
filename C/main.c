#include <stdio.h>

int main() {
    char name[100];
    printf("What's your name? ");
    scanf("%99s", name);
    printf("fuck you %s\n", name);
    return 0;
}
