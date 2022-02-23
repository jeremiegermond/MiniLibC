##
## EPITECH PROJECT, 2022
## Makefile
## File description:
##
##


NAME	=	libasm.so

SRC	=	src/strrchr.asm\
		src/strcasecmp.asm\
		src/strstr.asm\
		src/strpbrk.asm\
		src/strcspn.asm\
		src/memmove.asm\
		src/strncmp.asm\
		src/strcmp.asm\
		src/memcpy.asm\
		src/strlen.asm\
		src/strchr.asm\
		src/memset.asm\

OBJ = $(SRC:.asm=.o)

CFLAGS = -fPIC -shared
CPPFLAGS =
ASMFLAGS = -f elf64

all: $(NAME)

$(NAME): $(OBJ)
		ld $(CFLAGS) -o $(NAME) $(OBJ)

%.o: %.asm
	nasm $(ASMFLAGS) $< -o $@

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all