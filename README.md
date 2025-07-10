
# Mosquitto-MQTT-Docker

Simple Docker setup for Mosquitto MQTT Broker.

---

## 🚀 **Description**

This repo runs an MQTT broker using Mosquitto in Docker. Update the credentials before running to keep it secure.

---

## 🔧 **Setup Steps**

1. **Clone the repo**

```bash
git clone <repo-url>
cd Mosquitto-MQTT-Docker
```

2. **Change credentials**

Edit `docker-compose.yml` and set your desired MQTT username and password.

3. **Make entrypoint executable**

```bash
chmod +x entrypoint.sh
```

4. **Run entrypoint script**

```bash
./entrypoint.sh
```

---

## 🐳 **Build and Run with Docker Compose**

Alternatively, build and run using Docker Compose directly:

```bash
docker-compose up -d --build
```

This will build the Mosquitto image and run it in detached mode.

---

## ✅ **Verify the Broker is Running**

Check running containers:

```bash
docker ps
```

Test publishing and subscribing:

```bash
# Publish
mosquitto_pub -h <broker-ip> -t test/topic -m "hello"

# Subscribe
mosquitto_sub -h <broker-ip> -t test/topic
```

Replace `<broker-ip>` with your host IP or container IP as needed.

---

### ⚠️ **Note**

- Always set **strong credentials** before deploying.
- Adjust port mappings in `docker-compose.yml` if needed.

---

📝 **Maintainer:** asanihasan

---

> “Fast setups. Secure connections. Ship it.” 💨
