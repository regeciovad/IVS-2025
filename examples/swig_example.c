#include <time.h>
// Priklad na SWIG
// Pro Python pouzijte:
// swig -python swig_example.i
// gcc -c swig_example.c swig_example_wrap.c -fPIC -I/usr/local/include/python3.8/
// ld -shared swig_example.o swig_example_wrap.o -o _example.so

double My_variable = 3.0;

int fact(int n) { 
    if (n <= 1) return 1;
    else return n * fact(n-1);
}

int my_mod(int x, int y) {
    return (x % y); 
}

char *get_time() {
    time_t ltime;
    time(&ltime);
    return ctime(&ltime); 
}
