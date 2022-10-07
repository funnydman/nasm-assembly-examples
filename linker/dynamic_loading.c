#include <stdio.h>
#include <dlfcn.h>
#include <gnu/lib-names.h>
#include <stdlib.h>

int main() {
    void *handle;
    int (*mysum)(int, int); /* Pointer to the function */
    handle = dlopen("./libmymath.so", RTLD_LAZY);
    if (!handle) {
        fprintf(stderr, "%s\n", dlerror());
        exit(EXIT_FAILURE);
    }
    mysum = (int (*)(int, int)) dlsym(handle, "sum");
    printf("%d\n", (*mysum)(2, 4));
    dlclose(handle);

    return 0;
}
