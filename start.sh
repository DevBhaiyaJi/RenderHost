#!/bin/bash
# Accept EULA automatically
echo "eula=true" > eula.txt

# Start server
java -Xmx512M -Xms512M -jar server.jar nogui
