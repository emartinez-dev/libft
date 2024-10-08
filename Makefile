# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: franmart <franmart@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/05 15:15:27 by franmart          #+#    #+#              #
#    Updated: 2024/09/15 16:36:16 by franmart         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc
FLAGS = -Wall -Wextra -Werror
LIB = ar -rcs
RM = rm -rf

SRC_DIR = src/
_SRC =  ft_bzero.c\
		ft_free_array.c\
		ft_do_nothing.c\
		ft_lstreverse.c\
		ft_bubblesort.c\
		ft_isalnum.c\
		ft_atoi.c\
		ft_atoi_base.c\
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
		ft_strncmpi.c\
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

PF_DIR = lib/ft_printf/src/
_PF_SRC = 	ft_printf.c \
			ft_parse_chars.c \
			ft_parse_nums.c \
	 		ft_auxiliary.c

PF_SRC = ${addprefix ${PF_DIR}, ${_PF_SRC}}

GNL_DIR = lib/get_next_line/
_GNL_SRC = get_next_line.c
GNL_SRC = ${addprefix ${GNL_DIR}, ${_GNL_SRC}}

OBJ = ${SRC:.c=.o}
PF_OBJ = ${PF_SRC:.c=.o}
GNL_OBJ = ${GNL_SRC:.c=.o}

INCLUDES = -I ./include -I ./lib/ft_printf/inc -I ./$(GNL_DIR)

_BONUS = 	ft_lstnew_bonus.c\
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

${NAME}: ${OBJ} ${PF_OBJ} ${GNL_OBJ}
	@${LIB} $@ $^
	@echo "$(NAME) compiled!"

%.o: %.c
	@git submodule update --init
	@${CC} ${FLAGS} $(INCLUDES) -c $^ -o $@

all: ${NAME}

clean:
	@echo "Removing files..."
	@${RM} ${OBJ} ${BONUS_OBJ} ${PF_OBJ} ${GNL_OBJ}
	@echo "Done!"

fclean: clean
	@${RM} ${NAME}

re:	fclean all

bonus: ${OBJ} ${BONUS_OBJ}
	@${LIB} ${NAME} ${OBJ} ${BONUS_OBJ}
	@echo "$(NAME) bonus compiled!"

.PHONY:	all clean fclean re bonus
