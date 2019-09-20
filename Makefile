# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fjenae <fjenae@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/05 19:40:33 by fjenae            #+#    #+#              #
#    Updated: 2019/06/10 20:23:32 by fjenae           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# LIB_PATH= /Users/fjenae/Desktop/02_GNL/libft

# SOURCESLIB = *.c

# INCLUDESLIB = -I /Users/fjenae/Desktop/02_GNL/libft

# FLAGSLIB = -Wall -Werror -Wextra

# OBJECTSLIB = *.o

# NAMELIB = libft.a

# SOURCES = get_next_line.c

# INCLUDES = -I.

# FLAGS = -Wall -Werror -Wextra

# OBJECTS = $(SOURCES:.c=.o)

# NAME = main.c

# all:
# 	gcc -c $(FLAGSLIB) $(SOURCESLIB) $< $(LIB_PATH) $(INCLUDESLIB)
# 	ar rc $(NAMELIB) $(OBJECTSLIB) $(LIB_PATH)
# 	ranlib $(NAMELIB)
# 	gcc $(FLAGS) main.c $(SOURCES) $(NAMELIB) $(INCLUDESLIB) $(INCLUDES)

# clean:
# 	rm -f $(OBJECTS)
# 	rm -f $(OBJECTSLIB)

# fclean: clean
# 		rm -f $(NAMELIB)

# re: fclean all

# all:
# 	make -C libft/ fclean && make -C libft/
# 	clang -g -o0 -Wall -Wextra -Werror -I libft/includes -o get_next_line.o -c get_next_line.c
# 	clang -g -o0 -Wall -Wextra -Werror -I libft/includes -o main.o -c main.c
# 	clang -g -o0 -o test_gnl main.o get_next_line.o -I libft/includes -L libft/ -lft
# 	gcc -g -o0 main.c -o prog get_next_line.o libft.a

# clean:
# 	rm -r libft/*.o
# 	rm -r *.o

# fclean: clean
# 	rm -r a.out
# 	rm -r libft.a

all:
	make -C libft/ fclean && make -C libft/
	clang -g -o0 -I libft/includes -o get_next_line.o -c get_next_line.c
	clang -g -o0 -I libft/includes -o main.o -c main.c
	clang -g -o0 -o test_gnl main.o get_next_line.o -I libft/includes -L libft/ -lft
	gcc -g -o0 main.c -o prog get_next_line.o libft.a

clean:
	rm -r libft/*.o
	rm -r *.o

fclean: clean
	rm -r prog
	rm -r libft.a


