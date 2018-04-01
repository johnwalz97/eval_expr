# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jowalz <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/31 20:48:12 by jowalz            #+#    #+#              #
#    Updated: 2018/03/31 20:48:14 by jowalz           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

CC_FLAGS = -Wall -Werror -Wextra

NAME = eval_expr

SRC = main.c ft_functs.c eval_expr.c

OBJ  = $(SRC:.c=.o)

all: $(NAME)

$(NAME):
	$(CC) $(CC_FLAGS) -c $(SRC)
	$(CC) $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
