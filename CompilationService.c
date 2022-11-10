#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    char command[256];
    const char* gcc = "gcc";
    size_t gccLen = strlen(gcc);
    strncpy(command, gcc, gccLen);
    size_t n = gccLen;
    for (int i = 1; i < argc; i++)
    {
        command[n++] = ' ';
        size_t len = strlen(argv[i]);
        strncpy(&command[n], argv[i], len);
        n += len;
    }
    const char* outOption = " -o executable executable.c";
    strncpy(&command[n], outOption, strlen(outOption));
    system(command);
    system("objdump -d executable > executable.d");
    return 0;
}

