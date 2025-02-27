# Use the official Mosquitto image
FROM eclipse-mosquitto:2.0.20

# Set working directory
WORKDIR /mosquitto

# Create necessary directories inside the container
RUN mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && \
    chown -R mosquitto:mosquitto /mosquitto

# Copy configuration files inside the container
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY entrypoint.sh /mosquitto/entrypoint.sh

# Ensure entrypoint script has execute permissions
RUN chmod +x /mosquitto/entrypoint.sh

# Use entrypoint script before running Mosquitto
ENTRYPOINT ["/mosquitto/entrypoint.sh"]

# Default command to start Mosquitto
CMD ["mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
