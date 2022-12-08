
COLOUR_GREEN = \033[0;32m
COLOUR_RED=\033[0;31m
COLOUR_END = \033[0m

CC = clang++ -std=c++11
RM = rm -rf

NAME = Raytracer
SRCS =	main.cpp

OBJS = $(SRCS:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJS)
		@$(CC) $(OBJS) -o $(NAME)
		@echo "$(COLOUR_GREEN)Raytracer compilation succesfull!$(COLOUR_END)"

clean :
	@$(RM) $(OBJS)

fclean : clean
		@$(RM) $(NAME)
		@echo "$(COLOUR_RED)FCLEAN succesfull!$(COLOUR_END)"

re: fclean all

.PHONY: all clean fclean re