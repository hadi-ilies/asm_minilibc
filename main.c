#include <string.h>
#include <stdio.h>
char *chlak(char * s, char *accept);
size_t chlak2(char *s, char *reject);
char *chlak3(const char *haystack, const char *needle);

int main(int argc, char **argv)
{
	if (argc == 2) {
	/*	printf("strlen = %d\n", strlen(argv[1]));
		printf("strchr = %s\n", strchr("hadi", 'a'));
		printf("strcmp = %d\n", strcmp("~", ""));
		char str3[5] = "hadi\0";
		printf("memset = %s\n", memset(str3, 'j', 1));
		char str4[5] ="toto\0";
	//	 memcpy(str4, str3, 2);
		printf("memcpy= %s\n", str4);
		printf("rindex= %s\n", rindex("tessssssout", 's'));
		printf("strncmp : %d\n", strncmp("hadi_bereksi", "hidi_", 6));
		printf("strcasecmp: %d\n", strcasecmp("a", "A"));
		printf("strpbrk: %s\n", chlak("bonjour", "jour"));
		printf("strcspn: %d\n", chlak2("teso", "o"));
*/
	    char *str = malloc(sizeof(char) * 78);
        for (size_t i = 0; i < 78; i++)
            str[i] = ' ';
        str[99] = '\0';
        str[10] = 'a';
        str[11] = 'b';
        str[12] = 'c';
        printf("[%s]\n", str);
        memmove(str + 50, str + 10, 3);
        printf("[%s]\n", str);
        memmove(str + 12, str + 10, 3);
        printf("[%s]\n", str);
        memmove(str + 48, str + 50, 3);
        printf("[%s]\n", str);
        memmove(str + 48, str + 48, 5);
        printf("[%s]\n", str);
        for (size_t i = 0; i < 78; i++)
            if (i >= 0 && i < 10 || i >= 50 && i < 60)
                str[i] = 'a';
            else if (i >= 10 && i < 20 || i >= 60 && i < 70)
                str[i] = 'b';
            else
                str[i] = ' ';
        printf("[%s]\n", str);
        memmove(str + 5, str + 0, 20);
        memmove(str + 45, str + 50, 20);
        printf("[%s]\n\n\n", str);
        printf("strstr : %s\n", chlak3("bbibib", "bib"));
        printf("strstr T : %s\n", strstr("bbibib", "bib"));        
    }
}
