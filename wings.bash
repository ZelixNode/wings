echo "[Flatnode] Installatie is gestard!"
sleep 5s
apt install docker 
curl -sSL https://get.docker.com/ | CHANNEL=stable bash
systemctl enable --now docker
mkdir -p /etc/pterodactyl
curl -L -o /usr/local/bin/wings "https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")"
chmod u+x /usr/local/bin/wings
curl -o /etc/systemd/system/wings.service https://raw.githubusercontent.com/ZelixNode/wings/main/wings.service

echo "[Flatnode] Installatie is voltooid!"
sleep 5s
