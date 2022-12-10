# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: franmart <franmart@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/05 15:15:27 by franmart          #+#    #+#              #
#    Updated: 2022/12/10 17:09:34 by franmart         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc
FLAGS = -Wall -Wextra -Werror
LIB = ar -rcs
RM = rm -rf

SRC_DIR = src/
_SRC =  ft_bzero.c\
	   ft_isalnum.c\
	   ft_atoi.c\
	   ft_calloc.c\
	   ft_isalpha.c\
	   ft_isascii.c\
	   ft_isdigit.c\
	   ft_isprint.c\
	   ft_itoa.c\
	   ft_putchar_fd.c\
	   ft_putendl_fd.c\
	   ft_putnbr_fd.c\
	   ft_putstr_fd.c\
	   ft_memmove.c\
	   ft_memcpy.c\
	   ft_memchr.c\
	   ft_memcmp.c\
	   ft_memset.c\
	   ft_split.c\
	   ft_strchr.c\
	   ft_strdup.c\
	   ft_striteri.c\
	   ft_strjoin.c\
	   ft_strmapi.c\
	   ft_strncmp.c\
	   ft_strnstr.c\
	   ft_strlcat.c\
	   ft_strlcpy.c\
	   ft_strlen.c\
	   ft_strrchr.c\
	   ft_strtrim.c\
	   ft_substr.c\
	   ft_tolower.c\
	   ft_toupper.c

SRC = ${addprefix ${SRC_DIR}, ${_SRC}}

OBJ = ${SRC:.c=.o}

_BONUS = ft_lstnew_bonus.c\
	    ft_lstadd_front_bonus.c\
		ft_lstsize_bonus.c\
		ft_lstlast_bonus.c\
		ft_lstadd_back_bonus.c\
		ft_lstdelone_bonus.c\
		ft_lstclear_bonus.c\
		ft_lstiter_bonus.c\
		ft_lstmap_bonus.c
BONUS = ${addprefix ${SRC_DIR}, ${_BONUS}}

BONUS_OBJ = ${BONUS:.c=.o}

${NAME}: ${OBJ}
	@${LIB} $@ $^
	@echo "$(NAME) compiled!"

%.o: %.c
	@${CC} ${FLAGS} -c $^ -o $@

all:
	@${NAME}

clean:
	@echo "Removing files..."
	@${RM} ${OBJ} ${BONUS_OBJ}
	@echo "Done!"

fclean: clean
	@${RM} ${NAME}

re:	fclean all

bonus: ${OBJ} ${BONUS_OBJ}
	@${LIB} ${NAME} ${OBJ} ${BONUS_OBJ}
	@echo "$(NAME) bonus compiled!"

.PHONY:	all clean fclean re bonus
