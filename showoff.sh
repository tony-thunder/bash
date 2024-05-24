dnf upgrade -y
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf install docker-ce docker-ce-cli containerd.io -y
systemctl enable docker.service
systemctl start docker.service
docker pull grafana/grafana
docker run -d --name=grafana -p 3000:3000 grafana/grafana
ifconfig
