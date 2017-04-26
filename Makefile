CC=g++
CFLAGS=-c -Wall
HEADERS=TokenTree.h differentiator.h optimizations.h
SOURCES=main.cpp TokenTree.cpp differentiator.cpp optimizations.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=dif

all: $(HEADERS) $(SOURCES) $(EXECUTABLE)

MakeObjects: $(HEADERS) $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES)

$(EXECUTABLE): $(OBJECTS) MakeObjects
	$(CC) $(OBJECTS) -o $(EXECUTABLE)
   
