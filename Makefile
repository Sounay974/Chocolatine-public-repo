##
## EPITECH PROJECT, 2026
## make
## File description:
## make
##

SRC	  = $(wildcard ./src/*.c)

OBJ	=	$(SRC:.c=.o)

NAME	=	chocolatine

LIBNAME	=	libmy.a

CFLAGS	=	-I./include/ -I./printf/lib/my/

CC	=	epiclang

FLAG	=	-g -g3 -ggdb -I./include/ -L./ -lmy -I./printf/lib/my/

all:	$(OBJ)
	@echo "[OK] Binary files $(NAME) compiled succesfully"
	@ar rcs $(LIBNAME) $(OBJ)
	@$(CC) -o $(NAME) main.c $(FLAG)

clean:
	@rm -rf $(OBJ)
	@rm -rf #Makefile#
	@rm -rf $(LIBNAME)
	@echo "Remove .o"

fclean: clean
	@rm -rf $(NAME)
	@rm -rf $(LIBNAME)
	@echo "Remove binary files"

clang: all
	@epiclang -o $(NAME) src/*.c $(FLAG)
	@echo "Epiclang done"

re:	fclean all

mod: fclean re clean
	./$(NAME)
