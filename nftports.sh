
sudo nft flush ruleset

sudo nft add table filter
sudo nft add chain filter input
sudo nft add rule filter input iif lo log tcp dport 80 accept
sudo nft add rule filter input iif lo log tcp dport 443 accept

sudo nft add table nat
sudo nft add chain nat prerouting
sudo nft add rule nat prerouting iifname lo tcp dport 80 redirect to :8080
sudo nft add rule nat prerouting iifname lo tcp dport 443 redirect to :8090


sudo nft list ruleset
