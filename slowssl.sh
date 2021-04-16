ip = br1.turbo4g.xyz
cd / usr / local
wget https://golang.org/dl/go1.16.2.linux-amd64.tar.gz
tar xvf go1.16.2.linux-amd64.tar.gz
export GOROOT = / usr / local / go
exportar PATH = $ GOPATH / bin: $ GOROOT / bin: $ PATH
cd / root
apt install git -y
git clone https://www.bamsoftware.com/git/dnstt.git temp
mv / root / temp / root / dnstt
rm -rf temp
cd / root / dnstt / dnstt-server
vá construir
./dnstt-server -gen-key -privkey-file /root/dnstt/dnstt-server/server.key -pubkey-file /root/dnstt/dnstt-server/server.pub
sudo sed -i ' s / AllowTcpForwarding no / AllowTcpForwarding yes / g ' / etc / ssh / sshd_config
echo  " AllowTcpForwarding yes "  >> / etc / ssh / sshd_config
reiniciar serviço ssh
sudo echo  " screen -dmS slowdns iptables -I INPUT -p udp --dport 5300 -j ACEITAR && iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECIONAR --para portas 5300 && ulimit -u ilimitado && ulimit -n 65536 && / root / dnstt / dnstt-server / dnstt-server -udp: 5300 -privkey-file /root/dnstt/dnstt-server/server.key $ ip 127.0.0.1:443 "  > / bin / lento
sudo chmod + x / bin / lento
Claro
cat /root/dnstt/dnstt-server/server.pub

