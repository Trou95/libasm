#include "libasm.h"



int main() {

  char read_buffer[100];
  char dest[100];
  char* ptr;


  printf("ft_write: \n");
  ft_write(1, "Hello, World!\n", 14);

  printf("ft_read: \n");
  ft_read(0, read_buffer, 100);
  printf("You entered: %s\n", read_buffer);

  printf("ft_strlen(Hello, World!): %zu\n", ft_strlen("Hello, World!"));

  ptr = ft_strdup("ABCDEF");
  printf("ft_strdup(ABCDEF): value: %s adress: %p\n\n", ptr, ptr);

  printf("ft_strcmp: \t\t123 - 123 = %d \t\t| 123 - 1234 = %d \t| 1234 - 123 = %d\n", ft_strcmp("123", "123"), ft_strcmp("123", "1234"), ft_strcmp("1234", "123"));
  printf("strcmp: \t\t123 - 123 = %d \t\t| 123 - 1234  = %d \t| 1234 - 123 = %d\n\n", strcmp("123", "123"), strcmp("123", "1234"), strcmp("1234", "123"));

  ft_strcpy(dest, "42");
  printf("ft_strcpy(42): %s\n", dest);

  if(ptr)
    free(ptr);

  return 0;
}