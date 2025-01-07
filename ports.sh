#!/bin/bash
#Script creates port forwarding rules for xtclang PaaS

echo "flushing existing rules"

#sudo nft flush ruleset
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X

echo "creating forwarding rules..."
# Redirect traffic on port 80 to 127.0.0.1:8080
iptables -t nat -A PREROUTING -i lo -p tcp --dport 80 -j DNAT --to-destination 127.0.0.1:8080
# Redirect traffic on port 443 to 127.0.0.1:8090
iptables -t nat -A PREROUTING -i lo -p tcp --dport 443 -j DNAT --to-destination 127.0.0.1:8090

echo "forwarding rules created!"

# Allow the redirected traffic on the INPUT chain
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -i lo -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -i lo -p tcp --dport 8090 -j ACCEPT

#echo "redirected traffic set to accept"

#persist these rules - needs re-run after every reboot
#sudo iptables-save > /etc/iptables/rules.v4
sudo netfilter-persistent save
echo "iptables rules saved"
#sudo systemctl restart iptables
sudo systemctl restart netfilter-persistent
echo "iptables restarted"
sudo systemctl status netfilter-persistent
