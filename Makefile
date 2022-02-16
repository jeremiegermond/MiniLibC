##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## 
##


NAME	=	libasm.so

SRC	= 	src/main.asm\
	
OBJ = $(SRC:.asm=.o)

all: $(NAME)

CFLAGS = -Iinclude -fPIC -shared
CPPFLAGS = 
ASMFLAGS = -f elf64

$(NAME): $(OBJ)
		ld $(CFLAGS) -o $(NAME) $(OBJ)

$(OBJ): %.o: %.asm
	nasm $(ASMFLAGS) $< -o $@

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all