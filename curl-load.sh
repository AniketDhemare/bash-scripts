

#!/bin/bash

# Remove protocol prefix for logging
HOST=$(echo "$TARGET_URL" | sed -e 's|^https\?://||' -e 's|/.*$||')

echo "Sending HTTP requests to $TARGET_URL"

# Loop forever to generate continuous load
while true; do
  curl -s -o /dev/null -w "%{http_code} - %{time_total}\\n" "$TARGET_URL"
  sleep 1
done

