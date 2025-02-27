#!/bin/sh

PASSWD_FILE="/mosquitto/config/mosquitto_passwd"

# Ensure the config directory is writable
mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log
chown -R mosquitto:mosquitto /mosquitto
chmod -R 755 /mosquitto

# Set default credentials if not provided
MQTT_USER=${MQTT_USER:-defaultuser}
MQTT_PASSWORD=${MQTT_PASSWORD:-defaultpassword}

# Create the password file if it doesn't exist
if [ ! -f "$PASSWD_FILE" ]; then
    echo "Creating Mosquitto password file..."
    
    # Use environment variables for credentials
    mosquitto_passwd -c -b $PASSWD_FILE "$MQTT_USER" "$MQTT_PASSWORD"

    echo "Mosquitto user '$MQTT_USER' created."
fi

# Start Mosquitto
exec "$@"
