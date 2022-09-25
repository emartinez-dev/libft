LIB = ar -rcs
RM = rm -rf

CC = gcc
FLAGS = -Wall -Wextra -Werror

NAME = libft.a
SRC = ft_bzero.c\
	   ft_isalnum.c\
	   ft_isalpha.c\
	   ft_isascii.c\
	   ft_isdigit.c\
	   ft_isprint.c\
	   ft_memmove.c\
	   ft_memcpy.c\
	   ft_memset.c\
	   ft_strchr.c\
	   ft_strlen.c\
	   ft_strrchr.c\
	   ft_tolower.c\
	   ft_toupper.c

OBJ = ${SRC:.c=.o}

INCLUDE = libft.h

all: ${NAME}

${NAME}:	${OBJ}
	${LIB} -o $@ $^

.c.o: ${INCLUDE}
	${CC} ${FLAGS} -c $< -o ${<:.c=.o}

clean:
		${RM} ${OBJ}

fclean:
		${RM} ${NAME}

re:
	fclean all

so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRC)
	gcc -nostartfiles -shared -o libft.so $(OBJ)

.PHONY:	all clean fclean re so