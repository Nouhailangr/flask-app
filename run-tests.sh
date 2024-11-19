#!/bin/bash

# Simple test script
echo "Running tests..."

# Test if the Flask app starts
curl -s http://127.0.0.1:5000 | grep "Welcome to Your Flask App!" > /dev/null

if [ $? -eq 0 ]; then
    echo "Tests passed!"
    exit 0
else
    echo "Tests failed!"
    exit 1
fi
