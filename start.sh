#!/bin/bash

# Set the port
PORT=${PORT:-8080}

# Check if public/index.php exists
if [ ! -f public/index.php ]; then
    echo "Error: public/index.php not found. Your application might not be built correctly."
    exit 1
fi

# Start PHP built-in server
echo "Starting PHP server on port $PORT"
php -S 0.0.0.0:$PORT -t public