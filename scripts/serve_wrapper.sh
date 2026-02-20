#!/bin/bash

PORT=4000

# Find the PID of the process listening on the specified port
PID=$(lsof -ti :$PORT)

if [ -n "$PID" ]; then
  echo "Stopping existing shock serve instance (PID: $PID) on port $PORT..."
  kill -9 $PID
  # Wait a moment for the port to be released
  sleep 1
fi

echo "Starting shock serve on port $PORT..."
shock serve --port $PORT
