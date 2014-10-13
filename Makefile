#
# Machine Problem #1
# CS 438
#

CC = g++
INC = -I.
FLAGS = -g -Wall

all: sender sender_main receiver

sender.o: sender.cpp sender.h
	$(CC) -c $(FLAGS) $(INC) $< -o $@

receiver.o: receiver.cpp receiver.h
	$(CC) -c $(FLAGS) $(INC) $< -o $@

sender_main.o: sender_main.cpp
	$(CC) -c $(FLAGS) $(INC) $< -o $@

sender: sender.o
	$(CC) $^ -o $@

receiver: receiver.o
	$(CC) $^ -o $@

sender_main: sender_main.o sender.o
	$(CC) $^ -o $@

.PHONY : clean
clean:
	-rm -r -f *.o sender receiver sender_main