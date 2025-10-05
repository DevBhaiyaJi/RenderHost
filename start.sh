#!/bin/bash

# -------------------------------
# 1️⃣ Accept EULA automatically
# -------------------------------
echo "eula=true" > eula.txt

# -------------------------------
# 2️⃣ Reduce RAM usage for free tier
# -------------------------------
XMS=480M
XMX=480M

# -------------------------------
# 3️⃣ Start a simple HTTP server for UptimeRobot ping
#    (Port 8080)
# -------------------------------
# Run in background
python3 -m http.server 8080 &

# -------------------------------
# 4️⃣ Start Minecraft server
# -------------------------------
echo "Starting Minecraft Server..."
java -Xms$XMS -Xmx$XMX -jar server.jar nogui
