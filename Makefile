CC=g++
TARGET=1
CFLAGS= -std=c++17 -Wall

OBJECTS=$(patsubst %.cpp, %.o, $(wildcard *.cpp))
HEADERS=$(wildcard (*.h|hpp))

all:    build clean

build:  $(OBJECTS)
        $(CC) $(OBJECTS) -o $(TARGET) $(CFLAGS)

%.o:    %.cpp $(HEADERS)
        $(CC) $(CFLAGS) -c $< -o $@


clean:
        rm -rf *.o
