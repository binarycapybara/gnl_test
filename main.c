# include <string.h>
# include <strings.h>
# include <stdlib.h>
# include <unistd.h>
# include <ctype.h>
# include <math.h>
# include <stdio.h>
# include <fcntl.h>
# include <regex.h>
# include <assert.h>
#include "get_next_line.h"

int		main()
{
	char	*str;
	int 	m;
	char 	*filename;
	
	str = NULL;
	filename = "gnl1_1.txt";
	int fd5 = open(filename, O_RDONLY);
	while (1)
	{
		m = get_next_line(fd5, &str);
		if (m == 0)
		{
			printf("[%d] |%s|\n", m, str);
			break;
		}
		printf("[%d] |%s|\n", m, str);
	}
    free(str);

	return (0);
}