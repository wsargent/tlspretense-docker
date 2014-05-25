# -*- mode: ruby -*-
VAGRANTFILE_API_VERSION = "2"

# Set up TLSPretense and Docker.
Vagrant.configure(VAGRANTFILE_API_VERSION) do |tlspretense|

  # Use a vagrant optimized for Docker
  tlspretense.vm.box = "phusion/ubuntu-14.04-amd64"

  # tlspretense.vm.network "private_network", ip: "192.168.33.33"

  $script = <<SCRIPT
apt-get update && apt-get install -qy iptables build-essential software-properties-common docker.io build-essential ruby1.9.3
ln -sf /usr/bin/docker.io /usr/local/bin/docker

gem install tlspretense

external=eth0
internal=eth1

iptables --flush
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain

echo "Enable packet forwarding"
echo 1 > /proc/sys/net/ipv4/ip_forward

echo "Apply basic iptables rules to create a NAT"
iptables -t nat -A POSTROUTING -o $external -j MASQUERADE

echo "Done! TLSPretense will automatically add and remove the rules for redirecting traffic."

docker build -t ssltest /vagrant
SCRIPT
   tlspretense.vm.provision "shell", inline: $script

end
