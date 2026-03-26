#!/bin/bash
apt update && apt install -y python3-pip curl
pip3 install 3proxy
# настройка 3proxy
echo "daemon" > /etc/3proxy/3proxy.cfg
# ... конфиг
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null
ngrok config add-authtoken ТВОЙ_ТОКЕН
ngrok tcp 1080 &
