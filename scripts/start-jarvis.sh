#!/bin/bash
# Jarvis persistent remote control session
# Prevents sleep and auto-reconnects RC if it drops

SESSION_NAME="Jarvis"
RECONNECT_DELAY=3

echo "Starting Jarvis (auto-reconnect enabled)..."
echo "Press Ctrl+C to stop."
echo ""

# Prevent Mac from sleeping
caffeinate -d &
CAFFEINATE_PID=$!

cleanup() {
    echo ""
    echo "Stopping Jarvis..."
    kill $CAFFEINATE_PID 2>/dev/null
    exit 0
}
trap cleanup SIGINT SIGTERM

# Auto-reconnect loop
while true; do
    echo "[$(date '+%H:%M:%S')] Connecting RC: $SESSION_NAME"
    claude remote-control --name "$SESSION_NAME"
    echo "[$(date '+%H:%M:%S')] RC disconnected. Reconnecting in ${RECONNECT_DELAY}s..."
    sleep $RECONNECT_DELAY
done
