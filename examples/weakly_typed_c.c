// Priklad pro jazyk C
// Jazyk C je staticky typovany, ale silne typovany, jak by se mohlo zdat
// Postupem casu ale v prekladacich pridavali kontroly pro zamezeni chyb
// Zkuste si nejdriv prelozit jako gcc -w weakly_typed_c.c -o weakly_typed_c  
// Pote zkuste bez -w, ktery zamezuje vypisum varovani
// Zdroj: https://smorbieu.gitlab.io/key-differences-between-mainly-used-languages-for-data-science/
#include <stdio.h>

int add_numbers(int a, int b) {
    int result = a + b;
    return result;
}

int main() {
    char c = "5";
    int n = 5;

    int result = add_numbers(c, n);
    printf("%d\n", result);

    return 0;
}
