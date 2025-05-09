#!/bin/bash

# Load environment variables
source .env

# Check if PLEX_TOKEN is set
if [ -z "$PLEX_TOKEN" ]; then
    echo "Error: PLEX_TOKEN is not set. Check your .env file."
    exit 1
fi

# API URL
PLEX_API="$PLEX_URL/status/sessions?X-Plex-Token=$PLEX_TOKEN"

# Monitor Plex sessions
while true; do
    clear
    echo "Checking Plex streams..."
    RESPONSE=$(curl -s "$PLEX_API")

    # Check if there are active streams
    ACTIVE_STREAMS=$(echo "$RESPONSE" | grep -c "<Video")

    if [ "$ACTIVE_STREAMS" -gt 0 ]; then
        echo "Active Streams: $ACTIVE_STREAMS"
        echo ""
        echo "$RESPONSE" | xmllint --format - | grep -E "<Video|<User" | sed -n '/<Video/,/<\/Video>/p' | \
        awk -F '"' '
        /<Video/ { print "Title: " $4 }
        /<User/ { print "User: " $4 "\n" }
        '
    else
        echo "No active streams currently."
    fi

    sleep 5
done
