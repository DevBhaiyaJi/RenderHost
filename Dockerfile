# Base Java image
FROM openjdk:17-jdk

# Working directory
WORKDIR /app

# Copy project files (server.jar, start.sh, etc.)
COPY . /app

# Make start.sh executable
RUN chmod +x start.sh

# Default command to run server
CMD ["bash","start.sh"]
