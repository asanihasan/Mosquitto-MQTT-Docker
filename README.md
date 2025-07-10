
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

This will build and run your Mosquitto container.

---

## ✅ **Done**

Your MQTT broker should now be running and accessible based on your configured ports.

---

### ⚠️ **Note**

- Always set **strong credentials** before deploying.
- Adjust port mappings in `docker-compose.yml` if needed.

---

📝 **Maintainer:** asanihasan

---

> “Fast setups. Secure connections. Ship it.” 💨
