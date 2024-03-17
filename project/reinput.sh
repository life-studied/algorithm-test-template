#!/bin/bash

# Check if input.txt exists
if [ ! -f "input.txt" ]; then
    echo "Error: input.txt not found."
    exit 1
fi

# Redirect input.txt to main.exe
./Debug/main.exe < input.txt > output.txt

# Check if main.exe returned an error
if [ $? -ne 0 ]; then
    echo "Error: main.exe returned an error."
    exit 1
fi

# Check if output.txt was created
if [ ! -f "output.txt" ]; then
    echo "Error: output.txt not created."
    exit 1
fi

echo "Success: input.txt was redirected to main.exe and output.txt was created."

exit 0