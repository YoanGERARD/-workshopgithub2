##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## makefile
##

NAME	= githubaction

CC	= gcc

RM	= rm -f

SRCS	=	$(wildcard src/*.c) \

OBJS	= $(SRCS:.c=.o)

CFLAGS += -W -Wall -Wextra

all: $(NAME)

$(NAME):	$(OBJS)
		$(CC) $(OBJS) -o $(NAME) $(CFLAGS) $(LIB)
		rm $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all