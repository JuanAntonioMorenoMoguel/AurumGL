#!/bin/bash

# Compile the program
g++ -std=c++17 -I./include -L./lib src/*.cpp glad.c -lglfw3dll -o bin/app.exe

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful, running the program..."
    # Run the program
    ./bin/app.exe
else
    echo "Compilation failed."
fi