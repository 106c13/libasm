#include <stdio.h>

extern long	ft_strlen(char *s);
extern int	ft_write(int fd, char* s, int size);
extern int	ft_atoi_base(char* s);
extern int	ft_fib(int n);

int main() {
	int res = ft_fib(5);
	printf("RES=%d\n", res);
    printf("%ld\n", ft_strlen("hi"));

	ft_write(1, "hello\n", 6);

	printf("%d\n", ft_atoi_base("1000000000"));
	return 0;
}
