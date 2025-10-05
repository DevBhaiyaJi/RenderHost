# Base Java image for Minecraft 1.21+
FROM eclipse-temurin:21-jdk

# Working directory
WORKDIR /app

# Copy project files
COPY . /app

# Make start.sh executable
RUN chmod +x start.sh

# Default command
CMD ["bash","start.sh"]
