#include <stdio.h>

extern long	ft_strlen(char *s);
extern int	ft_write(int fd, char* s, int size);
extern int	ft_atoi_base(char* s);
extern int	ft_strcmp(char* s1, char* s2);
extern char* ft_strcpy(const char* dest, const char* src);

int main() {
    printf("%ld\n", ft_strlen("hi"));

	ft_write(1, "hello\n", 6);

	printf("%d\n", ft_atoi_base("1000000000"));
	
	if (ft_strcmp("1233", "123"))
		printf("not equal\n");

	const char* src = "bohaha";
	char dest[7];

	char* fin = ft_strcpy(dest, src);
	printf("%s\n", dest);
	printf("%s\n", fin);
	printf("%p %p\n", dest, fin);
	return 0;
}
