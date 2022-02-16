#include <stdio.h>
#include <string.h>

void main() {
    char ch1[] = "abcd";
    char ch2[] = "abcd";
    char ch3[] = "xyz";

    int comp = strcmp(ch1, ch2);

    if (comp == 0) {
        printf("%s = %s\n", ch1, ch2);
    } else {
         if (comp < 0) {
             printf("%s < %s\n", ch1, ch2);
         } else {
             printf("%s > %s\n", ch1, ch2);
         }
    
}