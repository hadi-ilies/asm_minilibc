##
## EPITECH PROJECT, 2019
## Makefile
## File description:
##
##

SRC_DIR		=	src/

SRC		= $(SRC_DIR)strlen.s  \
				$(SRC_DIR)strchr.s \
				$(SRC_DIR)strcmp.s \
				$(SRC_DIR)memset.s \
				$(SRC_DIR)memcpy.s
OBJ		=	$(SRC:.s=.o)

LDFLAGS		+=	-shared -fPIC

NAME		=	libasm.so

all:		$(NAME)

$(NAME):	$(OBJ)
		ld -o $(NAME) -shared  $(OBJ)

%.o:	%.s
		nasm -felf64 $< -o $@

clean:
		@$(RM) $(OBJ)

fclean:		clean
		@$(RM) $(NAME)
		
re:		fclean all

.PHONY: all clean fclean re
