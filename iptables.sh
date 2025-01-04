# Redirect traffic on port 80 to 127.0.0.1:8080
iptables -t nat -A PREROUTING -i lo -p tcp --dport 80 -j DNAT --to-destination 127.0.0.1:8080

# Redirect traffic on port 443 to 127.0.0.1:8090
iptables -t nat -A PREROUTING -i lo -p tcp --dport 443 -j DNAT --to-destination 127.0.0.1:8090

# Allow the redirected traffic on the INPUT chain
iptables -A INPUT -i lo -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -i lo -p tcp --dport 8090 -j ACCEPT

sudo iptables-save > /etc/iptables/rules.v4
