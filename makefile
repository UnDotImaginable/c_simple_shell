CFLAGS = -Wno-implicit-function-declaration

all: sshell

sshell: main.o functions.o
	@echo "Linking main.c's object file and functions.c's object file together..."
	@clang $(CFLAGS) main.o functions.o -o sshell

main.o: main.c
	@echo "Creating main.o's object file..."
	@clang $(CFLAGS) -c main.c

functions.o: functions.c
	@echo "Creating functions.c's object file..."
	@clang $(CFLAGS) -c functions.c

clean:
	@echo "Removing executable and object files..."
	@rm -rf main.o functions.o sshell