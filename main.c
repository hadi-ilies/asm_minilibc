#include <string.h>
#include <stdio.h>
char *chlak(char * s, char *accept);
size_t chlak2(char *s, char *reject);

int main(int argc, char **argv)
{
	if (argc == 2) {
		printf("strlen = %d\n", strlen(argv[1]));
		printf("strchr = %s\n", strchr("hadi", 'a'));
		printf("strcmp = %d\n", strcmp("~", ""));
		char str[5] = "hadi\0";
		printf("memset = %s\n", memset(str, 'j', 1));
		char str2[5] ="toto\0";
		 memcpy(str2, str, 2);
		printf("memcpy= %s\n", str2);
		printf("rindex= %s\n", rindex("tessssssout", 's'));
		printf("strncmp : %d\n", strncmp("hadi_bereksi", "hidi_", 6));
		printf("strcasecmp: %d\n", strcasecmp("a", "A"));
		printf("strpbrk: %s\n", chlak("bonjour", "jour"));
		printf("strcspn: %d\n", chlak2("teso", "o"));
	}
}
