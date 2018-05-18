# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atastet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/10 10:37:46 by atastet           #+#    #+#              #
#    Updated: 2018/05/18 14:48:56 by atastet          ###   ########.fr        #
#    Updated: 2018/05/15 10:29:14 by atastet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS	=	ft_atoi.c	\
			ft_putchar.c \
			ft_putchar_fd.c \
			ft_putstr.c \
			ft_putstr_fd.c \
			ft_putendl.c \
			ft_tablen.c	\
			ft_putendl_fd.c \
			ft_strcat.c	\
			ft_strcmp.c	\
			ft_strncmp.c \
			ft_strcpy.c	\
			ft_strdup.c	\
			ft_strlen.c	\
			ft_strncat.c \
			ft_strncpy.c \
			ft_isprint.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_strstr.c \
		   	ft_strnstr.c \
		   	ft_strchr.c \
		   	ft_strrchr.c \
			ft_bzero.c \
			ft_memset.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_memccpy.c \
			ft_strlcat.c \
			ft_putnbr.c \
			ft_putnbr_fd.c \
			ft_memalloc.c \
			ft_memdel.c \
			ft_strnew.c \
			ft_strdel.c \
			ft_strclr.c \
			ft_strequ.c \
			ft_strnequ.c \
			ft_strsub.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_strsplit.c \
			ft_itoa.c \
			ft_striter.c \
			ft_striteri.c \
			ft_strmap.c \
			ft_strmapi.c \
			ft_lstnew.c \
			ft_lstdelone.c \
			ft_lstdel.c \
			ft_lstadd.c \
			ft_lstiter.c \
			ft_lstmap.c \
			ft_isprime.c \
			ft_factorial.c \
			ft_strupcase.c \
			ft_strlowcase.c \
			ft_power.c \
			ft_puttab.c \
			ft_tabdel.c \
			ft_puttab.c

OBJS	=	$(SRCS:.c=.o)

CC	=	gcc

CFLAGS	=	-Wall -Wextra -Werror

all	:	$(NAME)

$(NAME)	:	$(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o	:	%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean	:
	rm -rf $(OBJS)

fclean	:	clean
	rm -rf $(NAME)

re	:	fclean all

.PHONY:	all clean fclean re
